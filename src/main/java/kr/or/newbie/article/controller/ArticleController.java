package kr.or.newbie.article.controller;


import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import kr.or.newbie.HomeController;
import kr.or.newbie.article.domain.Article;
import kr.or.newbie.article.service.ArticleService;

import org.omg.CORBA.portable.ValueOutputStream;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * 프로젝트관련 요청 처리 세부 컨트롤러
 * @author 김순재
 *
 */
@Controller
@RequestMapping("/board")
public class ArticleController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private ArticleService articleService;

	public void setAcademicService(ArticleService articleService) {
		this.articleService = articleService;
	}


	/**
	 * 게시글 목록보기(/academic/list)
	 */
	@RequestMapping("/boardlist")
	public String list(@RequestParam(value="program_name", required=false, defaultValue="")String program_name,Model model) {
		List<Map<String, Object>> list = articleService.showarticletList(program_name);
		
		
		model.addAttribute("list", list);
		model.addAttribute("programName", program_name);
		return "/board";
	}
	/**
	 * 카테고리별 목록 보기
	 */
	@RequestMapping("/categorylist")
	public String categoryList(@RequestParam(value="category", required=false, defaultValue="")String category,
							   @RequestParam(value="program_name",required=false, defaultValue="")String program_name,
							   @RequestParam(value="orderby",required=false, defaultValue="")String orderby,Model model) {
		
		List<Map<String, Object>> list = null;
		logger.debug("카테고리"+category);
		logger.debug("프로그램 이름"+program_name);
		logger.debug("오더바이 : " +orderby);
		
		if (orderby.equals("")) {
			logger.debug("기본진입");
			
			list = articleService.showcategoryList("%"+category+"%", program_name);
		}else{
			
			list = articleService.orderbyList("%"+category+"%", program_name, orderby);
		}
		
		
		
		model.addAttribute("list", list);
		model.addAttribute("category", category);
		model.addAttribute("programName", program_name);
		return "/board";
	}
	
	
	
	
	/**
	 * 게시글 상세보기
	 */
	
	@RequestMapping("/boardread")
	public String detailArticle(@RequestParam(value="article_no")int article_no, Model model){
		articleService.hitcountArticle(article_no);
		Article article =  articleService.detailArticle(article_no);
		
		model.addAttribute("article", article);

		
		
		return "/board_read";
	}
	
	/**
	 * 좋아요
	 */
	
	@RequestMapping("/like")
	public String like(@RequestParam(value="article_no")int article_no, Model model){
		
		articleService.likecountArticle(article_no);
		Article article =  articleService.detailArticle(article_no);
		int result = article.getLike_count();
		
		
		System.out.println(article_no);
		model.addAttribute("result", result);

		
		
		return "/ajaxResult/like";
	}
	
}
