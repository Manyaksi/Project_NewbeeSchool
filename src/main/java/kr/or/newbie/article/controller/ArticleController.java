package kr.or.newbie.article.controller;

import java.util.List;
import java.util.Map;

import kr.or.newbie.HomeController;
import kr.or.newbie.article.domain.Article;
import kr.or.newbie.article.service.ArticleService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * 프로젝트관련 요청 처리 세부 컨트롤러
 * 
 * @author 김순재
 *
 */
@Controller
@RequestMapping("/board")
public class ArticleController {

	private static final Logger logger = LoggerFactory
			.getLogger(HomeController.class);

	@Autowired
	private ArticleService articleService;

	public void setAcademicService(ArticleService articleService) {
		this.articleService = articleService;
	}

	/**
	 * 게시글 목록보기(/academic/list)
	 */
	@RequestMapping("/boardlist")
	public String list(
			@RequestParam(value = "program_name", required = false, defaultValue = "") String program_name,
			Model model) {
		List<Map<String, Object>> list = articleService
				.showarticletList(program_name);

		model.addAttribute("list", list);
		model.addAttribute("programName", program_name);
		return "/board";
	}

	/**
	 * 카테고리별 목록 보기
	 */
	@RequestMapping("/categorylist")
	public String categoryList(
			@RequestParam(value = "category", required = false, defaultValue = "") String category,
			@RequestParam(value = "program_name", required = false, defaultValue = "") String program_name,
			@RequestParam(value = "orderby", required = false, defaultValue = "") String orderby,
			Model model) {

		List<Map<String, Object>> list = null;

		list = articleService.showcategoryList("%" + category + "%",
				program_name);

		model.addAttribute("list", list);
		model.addAttribute("category", category);
		model.addAttribute("programName", program_name);
		return "/board";

	}

	@RequestMapping("/orderbyList")
	public String orderbyList(
			@RequestParam(value = "category", required = false, defaultValue = "") String category,
			@RequestParam(value = "program_name", required = false, defaultValue = "") String program_name,
			@RequestParam(value = "orderby", required = false, defaultValue = "") String orderby,
			Model model) {

		List<Map<String, Object>> list = null;
		
		if (orderby.equals("hit_count")) {
			
			list = articleService.hitcountList("%" + category + "%", program_name);
		}else if (orderby.equals("like_count")) {
			list = articleService.likecountList("%" + category + "%", program_name);
		}

		
		
		
		model.addAttribute("list", list);
		model.addAttribute("category", category);
		model.addAttribute("programName", program_name);
		return "/board";
	}
	
	/**
	 * 게시글 검색
	 */
	@RequestMapping(value="/search", method=RequestMethod.POST)
	public String searchList(Model model, 
			@RequestParam(value = "searchValue", required = false, defaultValue = "")String searchValue,
			@RequestParam(value = "program_name", required = false, defaultValue = "") String program_name,
			@RequestParam(value = "category", required = false, defaultValue = "") String category){
		

		List<Map<String, Object>> list = null;
		
		logger.debug(searchValue);
		
		logger.debug(program_name);
		logger.debug(category);

		list = articleService.searchList(program_name,"%" + category + "%","%"+searchValue+"%", "%"+searchValue+"%", "%"+searchValue+"%");

		
		model.addAttribute("category", category);
		model.addAttribute("programName", program_name);
		model.addAttribute("list", list);
		return "/board";


	}

	/**
	 * 게시글 상세보기
	 */

	@RequestMapping("/boardread")
	public String detailArticle(
			@RequestParam(value = "article_no") int article_no, Model model) {
		articleService.hitcountArticle(article_no);
		Article article = articleService.detailArticle(article_no);
		List<Map<String, Object>> commentList = articleService.commentList(article_no);

		model.addAttribute("commentList", commentList);
		model.addAttribute("article", article);

		return "/board_read";
	}

	/**
	 * 좋아요
	 */

	@RequestMapping("/like")
	public String like(@RequestParam(value = "article_no") int article_no,
			Model model) {

		articleService.likecountArticle(article_no);
		Article article = articleService.detailArticle(article_no);
		int result = article.getLike_count();

		System.out.println(article_no);
		model.addAttribute("result", result);

		return "/ajaxResult/like";
	}
	
	/**
	 * 댓글 등록
	 */
	
	@RequestMapping(value ="/writecomment", method=RequestMethod.POST)
	public String writeComment(@RequestParam(value = "article_no")int article_no,
	@RequestParam(value = "user_no")int user_no,
	@RequestParam(value = "program_name")String program_name,
	@RequestParam(value = "comment_content")String comment_content){
		
		logger.debug("등록 진입");
		logger.debug("파라미터 값들" + article_no +"2."+user_no+"3."+program_name+"4."+comment_content);
		
		articleService.writeComment(article_no, user_no, program_name, comment_content);
		
		
		return "redirect:/board/boardread?article_no="+article_no;
		
	}
	

}
