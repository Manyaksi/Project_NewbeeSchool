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
		List<Map<String, Object>> mapList = projectService.showProjectComment(groupNo);

		model.addAttribute("detailList", map);
		model.addAttribute("userList",list);
		model.addAttribute("commentList", mapList);
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
		List<Map<String, Object>> mapList = projectService.showProjectComment(groupNo);
		model.addAttribute("detailList", map);
		model.addAttribute("commentList", mapList);
		return "/project";
	}
	
	/**
	 * 프로젝트 댓글등록 요청(project/comment_register)
	 */
	@RequestMapping(value="/comment_register", method=RequestMethod.POST)
	public String registerComment(ProjectComment projectComment, Model model) {
		
		projectService.addProjectComment(projectComment);
		Map<String, Object> map = projectService.showProjectdetail(projectComment.getUserNo());
		List<Map<String, Object>> mapList = projectService.showProjectComment(projectComment.getUserNo());
		model.addAttribute("detailList", map);
		model.addAttribute("commentList", mapList);

		
		return "/project";
	}
	

	
	/**
	 * 프로젝트 만들기 페이지 요청(project/project_register)
	 */
	@RequestMapping(value="/comment_register", method=RequestMethod.GET)
	public String registerProject(Model model) {
		
		return "/project_write";
	}
	
	/**
	 * 프로젝트 참가여부 Boolean(/project/enter_user.do)
	 */
	@RequestMapping(value="/enter_user.do", method=RequestMethod.GET)
	public String enterUserBoolean(int userNo, int groupNo, Model model) {
		
		int confirmOwner = projectService.confirmGroupOwner(userNo, groupNo);
		int confirmUser = projectService.confirmEnterUser(userNo, groupNo);
		
		if(confirmOwner > 0){
			model.addAttribute("result", "owner");
		}else if(confirmUser > 0){
			model.addAttribute("result", "member");
		}else{
			model.addAttribute("result", "notting");
		}
		return "/ajaxResult/enter_user";
	}
	
	
		/**
		 * 프로젝트 참가인원 Boolean(/project/groupcount.do)
		 */
		@RequestMapping(value="/groupcount.do", method=RequestMethod.GET)
		public String enterCountBoolean(int groupNo, Model model) {
			
			Project project = projectService.confirmGroupCount(groupNo);
			
			if(project.getGroupMaxcount() <= project.getGroupCount()){
				model.addAttribute("outcome", "false");
			}
			else{
				model.addAttribute("outcome", "true");
			}
			return "/ajaxResult/enter_user";
		}
}
