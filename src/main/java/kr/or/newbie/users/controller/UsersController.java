package kr.or.newbie.users.controller;


import java.util.List;

import kr.or.newbie.HomeController;
import kr.or.newbie.project.domain.Project;
import kr.or.newbie.project.service.ProjectService;
import kr.or.newbie.users.domain.Users;
import kr.or.newbie.users.service.UsersService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 프로젝트관련 요청 처리 세부 컨트롤러
 * @author 김원영
 *
 */
@Controller
@RequestMapping("/users")
public class UsersController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private UsersService usersService;

	public void setAcademicService(UsersService usersService) {
		this.usersService = usersService;
	}
 

	/**
	 * 회원가입 요청(/users/join)
	 */
	@RequestMapping("/join")
	public String list(Users users, Model model) {
		usersService.joinNewbie(users);// 여기로 접속
		return "/project_list";
	}
	
	/**
	 * 회원등록 요청(/users/join)
	 */
	@RequestMapping(value="/join", method=RequestMethod.POST)
	//	public String join(@ModelAttribute("employee")Employee employee) {
	public String join(Users users) {
		logger.info(users.toString());
		System.out.println("112번");
		return "/registeration2";
	}
	
}
