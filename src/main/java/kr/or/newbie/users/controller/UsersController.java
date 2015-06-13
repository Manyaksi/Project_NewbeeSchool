package kr.or.newbie.users.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.newbie.HomeController;
import kr.or.newbie.project.domain.Project;
import kr.or.newbie.project.service.ProjectService;
import kr.or.newbie.users.dao.MybatisUsersDao;
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
	@RequestMapping(value="/join", method=RequestMethod.GET)
	//	public String join(@ModelAttribute("employee")Employee employee) {
	public String join(Users users) {
		logger.info(users.toString());
		usersService.joinNewbie(users);
		return "/index";
	}
	
	
	@RequestMapping(value = "/email_check", method = RequestMethod.POST)
	public String email_check(String email, Model model) {
		System.out.println(email);
		Users users = usersService.confirmEmail(email);
		String result = null;
		if(users != null){
			result = "이메일이 중복입니다. 다른 이메일을 입력하세요";
			System.out.println(result);
		}else{
			result = "사용가능한 이메일입니다.";
			System.out.println(result);
		}
		
		model.addAttribute("resultId", result);
		return "/ajaxResult/result";
	}
	
	@RequestMapping(value = "/nickname_check", method = RequestMethod.POST)
	public String nickname_check(String nickname, Model model) {
		System.out.println(nickname);
		Users users = usersService.confirmNickname(nickname);
		String result = null;
		if(users != null){
			result = "닉네임이 중복입니다. 다른 닉네임을 사용하세요.";
			System.out.println(result);
		}else{
			result = "사용가능한 닉네임입니다.";
			System.out.println(result);
		}
		
		model.addAttribute("resultNickname", result);
		return "/ajaxResult/result";
	}
}
