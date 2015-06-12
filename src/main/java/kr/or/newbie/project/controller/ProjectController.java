package kr.or.newbie.project.controller;


import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import kr.or.newbie.HomeController;
import kr.or.newbie.project.domain.Project;
import kr.or.newbie.project.domain.ProjectComment;
import kr.or.newbie.project.domain.Users;
import kr.or.newbie.project.service.ProjectService;

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


	/**
	 * 프로젝트 목록 출력 요청(/project/project_list)
	 */
	@RequestMapping("/project_list")
	public String list(Model model) {
		List<Map<String, Object>> map = projectService.showProject();
		model.addAttribute("list", map);
		
		return "/project_list";
	}
	
	/**
	 * 프로젝트 상세보기 출력 요청(project/project_detail)
	 */
	@RequestMapping(value="/project_detail", method=RequestMethod.POST)
	public String detail(@RequestParam(value="groupNo") int groupNo, Model model) {
		System.out.println(groupNo);
		Map<String, Object> map = projectService.showProjectdetail(groupNo);
		List<Users> list = projectService.showEnterProject(groupNo);
		for (Users users : list) {
			System.out.println(users.toString());
		}
		
		model.addAttribute("detailList", map);
		model.addAttribute("userList",list);
		return "/project";
	}
	
	/**
	 * 프로젝트 참가하기 요청(project/project_enter)
	 */
	@RequestMapping(value="/project_enter", method=RequestMethod.POST)
	public String enter(@RequestParam(value="groupNo") int groupNo, @RequestParam(value="userNo") int userNo, Model model) {
		System.out.println(groupNo);
		System.out.println(userNo);
		
		projectService.joinProject(groupNo, userNo);
		Map<String, Object> map = projectService.showProjectdetail(groupNo);
		model.addAttribute("detailList", map);
		
		return "/project";
	}
	
	/**
	 * 프로젝트 댓글등록 요청(project/comment_register)
	 */
	@RequestMapping(value="/comment_register", method=RequestMethod.POST)
	public String register(ProjectComment projectComment, Model model) {
		System.out.println(projectComment.getUserNo());
		System.out.println(projectComment.getGroupNo());
		System.out.println(projectComment.getGroupcommContent());
		projectService.addProjectComment(projectComment);
		return "/project";
	}
}
