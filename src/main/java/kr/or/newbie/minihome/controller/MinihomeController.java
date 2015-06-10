package kr.or.newbie.minihome.controller;


import java.util.List;

import kr.or.newbie.HomeController;
import kr.or.newbie.project.domain.Project;
import kr.or.newbie.project.service.ProjectService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 미니홈관련 요청 처리 세부 컨트롤러
 * @author 곽선민
 *
 */
@Controller
@RequestMapping("/minihome")
public class MinihomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private ProjectService minihomeService;

	public void setAcademicService(ProjectService projectService) {
		this.minihomeService = minihomeService;
	}


	/**
	 * minihome 목록 출력 요청(/academic/list)
	 */
	@RequestMapping("/minihome")
	public String minihome(Model model) {
		List<Minihome> minihome = projectService.showProjectList();
		model.addAttribute("minihome", minihome);
		System.out.println("돌아라");
		return "/minihome";
	}
	
}
