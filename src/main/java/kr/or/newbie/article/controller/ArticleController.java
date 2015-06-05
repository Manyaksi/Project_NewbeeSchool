package kr.or.newbie.article.controller;


import java.util.List;
import java.util.Map;

import kr.or.newbie.HomeController;
import kr.or.newbie.article.domain.Article;
import kr.or.newbie.article.service.ArticleService;
import kr.or.newbie.project.domain.Project;
import kr.or.newbie.project.service.ProjectService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
	 * 프로젝트 목록 출력 요청(/academic/list)
	 */
	@RequestMapping("/boardlist")
	public String list(Model model) {
		List<Map<String, Object>> list = articleService.showarticletList();
		
		model.addAttribute("list", list);
		return "/board";
	}
	
}
