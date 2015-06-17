package kr.or.newbie.users.controller;


import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Locale;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.newbie.HomeController;
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
	
	/**
	 *  로그인화면요청(GET)
	 */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model) {
		return "/login/result";
	}
	
	/**
	 * 로그인 요청(POST)
	 */
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public String login(Users users,  HttpServletResponse response, Model model){
		
		Users loginUsers = usersService.login(users);
		
		logger.debug("로그인 진입");
		
		
		if(loginUsers != null){
			logger.debug("[로그인]요청(GET)이 들어옴 : " + users.getId() + users.getPassword());
			logger.debug("[로그인] 로그인 성공한 회원 : " + loginUsers.toString());
			
			Cookie loginCookie = new Cookie("loginId", String.valueOf(loginUsers.getUserNo()));
			Cookie loginCookieNickName;
			try {
				loginCookieNickName = new Cookie("loginNickName", URLEncoder.encode(loginUsers.getNickname(), "euc-kr"));
			System.out.println(loginUsers.getNickname());
			loginCookie.setPath("/");
			loginCookieNickName.setPath("/");
			response.addCookie(loginCookie);
			response.addCookie(loginCookieNickName);
			
			
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return "redirect:/";
		}else{
			logger.debug("로그인 실패");
			model.addAttribute("loginResult", "등록된 회원이 아닙니다.");
			
			return "redirect:/";
		}
	}
	
	
	/**
	 *  로그아웃 화면요청(GET)
	 */
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(Model model, HttpServletRequest request, HttpServletResponse response) {
		
		Cookie[] cookies = request.getCookies();
		
		logger.debug("로그아웃 진입");
		
		if(cookies != null){
			logger.debug("if문 진입");
			for (Cookie cookie : cookies) {
				String id = cookie.getName();
				if (id.equals("loginId")) {
					System.out.println(id);
					cookie.setMaxAge(0);
					cookie.setPath("/");
					response.addCookie(cookie);
					
				}/*else if (id.equals("loginNickName")){
					cookie.setMaxAge(0);
					cookie.setPath("/");
					response.addCookie(cookie);
				}*/
			}
		}
		
		return "redirect:/";
	}
	
/*	
	  *//**
	   * 로그인부분
	   *//*
	  @RequestMapping(value = "/login", method = RequestMethod.POST)
	   public String login(Model model, String userId, String password,
	         HttpServletResponse response) {
	         User user = null;
	         
	         //유저 확인
	         user = userService.login(userId, password);
	         
	         //확인후 쿠키 저장
	         response.addCookie(new Cookie("userId", user.getUserId()));
	         response.addCookie(new Cookie("emailAddr", user.getEmailAddr()));
	         model.addAttribute("user", user);
	         
	         return "redirect:/main";
	   }
	  
	  *//**
	   * 로그아웃부분
	   *//*
	   @RequestMapping(value = "/logout", method = RequestMethod.GET)
	   public String login(
	         Model model,
	         @CookieValue(value = "id", defaultValue = "null") Cookie userId,
	         @CookieValue(value = "emailAddr", defaultValue = "null") Cookie emailAddr ,
	         HttpServletResponse response) {
	         
	         userId.setMaxAge(0);
	         userId.setPath("/");
	         
	         emailAddr.setMaxAge(0);
	         emailAddr.setPath("/");
	         
	         response.addCookie(userId);
	         response.addCookie(emailAddr);
	         return "redirect:/main";
	   }*/
}
