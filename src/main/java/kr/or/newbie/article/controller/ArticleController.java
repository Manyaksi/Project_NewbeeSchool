package kr.or.newbie.article.controller;

import java.util.List;
import java.util.Map;

import kr.or.newbie.HomeController;
import kr.or.newbie.article.domain.Article;
import kr.or.newbie.article.domain.PagingHelper;
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
	 * 게시글 등록
	 */
	@RequestMapping(value = "/writearticle", method = RequestMethod.GET)
	public String writeComment(
			Model model,
			@RequestParam(value = "program_name", required = false, defaultValue = "") String programName) {

		
		logger.debug("진입ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ");

		model.addAttribute("programName", programName);
		return "board_write";
	}

	/**
	 * 게시글 등록 포스트
	 */

	@RequestMapping(value = "/writearticle", method = RequestMethod.POST)
	public String writeComment(
			Article article,
			@RequestParam(value = "content", required = false, defaultValue = "") String content,
			@RequestParam(value = "program_name", required = false, defaultValue = "") String programName) {

		logger.debug("게시글 등록 진입");
		logger.debug(content);
		articleService.writeArticle(article);

		return "redirect:/board/boardlist?program_name=" + programName;

	}

	/**
	 * 게시글 삭제, 관련 댓글 삭제
	 */

	@RequestMapping("/deletearticle")
	public String deleteArticle(
			@RequestParam(value = "article_no") int article_no,
			@RequestParam(value = "program_name") String programName) {

		logger.debug("게시글 삭제 진입");
		articleService.deleteArticle(article_no);
		articleService.deleteComment(article_no);

		return "redirect:/board/boardlist?program_name=" + programName;
	}
	
	/**
	 * 게시글 수정하기
	 */	
	@RequestMapping(value = "/modifyarticle", method = RequestMethod.GET)
	public String modifyarticle(
			Model model,
			@RequestParam(value = "article_no", required = false, defaultValue = "") int article_no,
			@RequestParam(value = "program_name", required = false, defaultValue = "") String programName) {

		Map<String, Object> article = articleService.detailArticle(article_no);
		logger.debug("진입ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ");
		
		model.addAttribute("programName", programName);
		model.addAttribute("article", article);
		
		return "/board_modify";
	}
	
	@RequestMapping(value = "/modifyarticle", method = RequestMethod.POST)
	public String modifyarticle(Model model,
			@RequestParam(value = "article_no") int article_no,
			@RequestParam(value = "subject") String subject,
			@RequestParam(value = "content") String content,
			@RequestParam(value = "program_name") String programName){
		
		logger.debug("수정 포스트 진입");
		
		articleService.modifyArticle(subject, content, article_no);
		
		model.addAttribute("programName", programName);
		
		return "redirect:/board/boardlist?program_name=" + programName;
	}

	/**
	 * 게시글 목록보기(/academic/list)
	 */
	@RequestMapping("/boardlist")
	public String list(
			@RequestParam(value = "program_name", required = false, defaultValue = "") String program_name,
			@RequestParam(value = "page", required = false, defaultValue = "") int page,
			Model model) {
		List<Map<String, Object>> list = articleService
				.showarticletList(program_name);
		
		List<Map<String, Object>> listpage = articleService
				.paging(program_name, page);

		int size = list.size();
		
		
		PagingHelper pagingHelper = null;
		pagingHelper = new PagingHelper(pagingHelper.count_List, pagingHelper.count_Page, list.size(), page);
		pagingHelper.calculate();

		model.addAttribute("size", size);
		model.addAttribute("list", listpage);
		model.addAttribute("paging", pagingHelper.toHtml(program_name, "", ""));
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
			@RequestParam(value = "page", required = false, defaultValue = "") int page,
			Model model) {

		
		logger.debug("카테고리별 진입" + category);
		List<Map<String, Object>> list = null;

		list = articleService.showcategoryList("%" + category + "%",
				program_name);
		logger.debug("전체 리스트 출력 완료"+program_name);
		
		List<Map<String, Object>> listpage = articleService.categoryPaging(category, program_name, page);
		
		logger.debug("리스트 페이지"+program_name);

		int size = list.size();
		
		PagingHelper pagingHelper = null;
		pagingHelper = new PagingHelper(pagingHelper.count_List, pagingHelper.count_Page, list.size(), page);
		pagingHelper.calculate();

		model.addAttribute("size", size);
		model.addAttribute("paging", pagingHelper.toHtml(program_name, "category", category));
		model.addAttribute("list", listpage);
		model.addAttribute("category", category);
		model.addAttribute("programName", program_name);
		return "/board";

	}

	/**
	 * orderby 순
	 */
	@RequestMapping("/orderbyList")
	public String orderbyList(
			@RequestParam(value = "category", required = false, defaultValue = "") String category,
			@RequestParam(value = "program_name", required = false, defaultValue = "") String program_name,
			@RequestParam(value = "orderby", required = false, defaultValue = "") String orderby,
			@RequestParam(value = "page", required = false, defaultValue = "") int page,
			Model model) {
		
		PagingHelper pagingHelper = null;
		
		

		List<Map<String, Object>> list = null;
		List<Map<String, Object>> listpage = null;
		int size = 0;
		if (orderby.equals("hit_count")) {

			list = articleService.hitcountList("%" + category + "%",
					program_name);
			
			listpage = articleService.hitcountPaging("%" + category + "%", program_name, page);
			
			size = list.size();
			pagingHelper = new PagingHelper(pagingHelper.count_List, pagingHelper.count_Page, list.size(), page);
			pagingHelper.calculate();
			
			model.addAttribute("paging", pagingHelper.toHtml(program_name, "category", category));
			
			
		} else if (orderby.equals("like_count")) {
			list = articleService.likecountList("%" + category + "%",
					program_name);
			listpage = articleService.likecountPaging("%" + category + "%", program_name, page);
			
			size = list.size();
			
			pagingHelper = new PagingHelper(pagingHelper.count_List, pagingHelper.count_Page, list.size(), page);
			pagingHelper.calculate();
			
			model.addAttribute("paging", pagingHelper.toHtml(program_name, "category", category));
			
		} else if (orderby.equals("commentcount")) {
			list = articleService.commentcountList("%" + category + "%",
					program_name);
			
			listpage = articleService.commentcountPaging("%" + category + "%", program_name, page);
			
			size = list.size();
			pagingHelper = new PagingHelper(pagingHelper.count_List, pagingHelper.count_Page, list.size(), page);
			pagingHelper.calculate();
			
			
			model.addAttribute("paging", pagingHelper.toHtml(program_name, "category", category));
			
			
		}

		model.addAttribute("size", size);
		model.addAttribute("list", listpage);
		model.addAttribute("category", category);
		model.addAttribute("programName", program_name);
		return "/board";
	}

	/**
	 * 게시글 검색
	 */
	@RequestMapping(value = "/search", method = RequestMethod.POST)
	public String searchList(
			Model model,
			@RequestParam(value = "searchValue", required = false, defaultValue = "") String searchValue,
			@RequestParam(value = "program_name", required = false, defaultValue = "") String program_name,
			@RequestParam(value = "category", required = false, defaultValue = "") String category) {

		List<Map<String, Object>> list = null;

		logger.debug(searchValue);

		logger.debug(program_name);
		logger.debug(category);

		list = articleService.searchList(program_name, "%" + category + "%",
				"%" + searchValue + "%", "%" + searchValue + "%", "%"
						+ searchValue + "%");

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
			@RequestParam(value = "article_no") int article_no,
			Model model,
			@RequestParam(value = "program_name", required = false, defaultValue = "") String program_name) {
		articleService.hitcountArticle(article_no);
		Map<String, Object> article = articleService.detailArticle(article_no);
		List<Map<String, Object>> commentList = articleService
				.commentList(article_no);

		System.out.println(commentList.size());

		model.addAttribute("commentList", commentList);
		model.addAttribute("programName", program_name);
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
		Map<String, Object> article = articleService.detailArticle(article_no);

		model.addAttribute("result", article.get("LIKE_COUNT"));

		return "/ajaxResult/like";
	}

	/**
	 * 댓글 등록
	 */

	@RequestMapping(value = "/writecomment", method = RequestMethod.POST)
	public String writeComment(
			@RequestParam(value = "article_no") int article_no,
			@RequestParam(value = "user_no") int user_no,
			@RequestParam(value = "program_name") String program_name,
			@RequestParam(value = "comment_content") String comment_content) {

		logger.debug("등록 진입");
		logger.debug("파라미터 값들" + article_no + "2." + user_no + "3."
				+ program_name + "4." + comment_content);

		articleService.commentcount(article_no);
		articleService.writeComment(article_no, user_no, program_name,
				comment_content);

		return "redirect:/board/boardread?article_no=" + article_no;

	}
	/**
	 * 댓글 삭제
	 */
	
	@RequestMapping(value = "/removecomment")
	public String removeComment(
			@RequestParam(value = "comment_no") int comment_no,
			@RequestParam(value = "article_no") int article_no) {
		
		logger.debug("댓글 삭제 진입");
		articleService.removeComment(comment_no);
		
		return "redirect:/board/boardread?article_no=" + article_no;
		
	}
	
	
	
	/**
	 * 페이징 테스트
	 */
	
	/**
	 * 게시글 목록보기(/academic/list)
	 */
	@RequestMapping("/paging")
	public String paging(
			@RequestParam(value = "program_name", required = false, defaultValue = "") String program_name,
			@RequestParam(value = "page", required = false, defaultValue = "") int page,
			Model model) {
		List<Map<String, Object>> list = articleService
				.showarticletList(program_name);
		
		List<Map<String, Object>> list1 = articleService.paging(program_name, page);
		
		System.out.println(list.size());
		
		PagingHelper pagingHelper = null;
		pagingHelper = new PagingHelper(pagingHelper.count_List, pagingHelper.count_Page, list.size(), page);
		pagingHelper.calculate();
		
		

		int size = list.size();

		model.addAttribute("paging", pagingHelper.toHtml(program_name, "", ""));
		model.addAttribute("size", size);
		model.addAttribute("list", list1);
		model.addAttribute("programName", program_name);
		return "/board";
	}
	
	

}
