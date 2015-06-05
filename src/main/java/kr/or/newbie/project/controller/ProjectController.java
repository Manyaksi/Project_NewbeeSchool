package kr.or.newbie.project.controller;


import java.util.List;
import java.util.Map;

import kr.or.newbie.HomeController;
import kr.or.newbie.project.service.ProjectService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 프로젝트관련 요청 처리 세부 컨트롤러
 * @author 김순재
 *
 */
@Controller
@RequestMapping("/project")
public class ProjectController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private ProjectService projectService;

	public void setAcademicService(ProjectService projectService) {
		this.projectService = projectService;
	}


/*	*//**
	 * 프로젝트 목록 출력 요청(/project/project_list)
	 *//*
	@RequestMapping("/project_list")
	public String list(Model model) {
		List<Map<String, Object>> map = projectService.showProject();
		model.addAttribute("list", map);
		
		return "/project_list";
	}*/
	
	/**
	 * 프로젝트 상세보기 출력 요청(project/project_list)
	 */
	@RequestMapping(value="/project_detail", method=RequestMethod.POST)
	public String join(int project_no) {
		System.out.println(project_no);

		return "/project";
	}
}
