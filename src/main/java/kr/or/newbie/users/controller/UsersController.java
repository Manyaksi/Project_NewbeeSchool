package kr.or.newbie.users.controller;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;

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
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

/**
 * 프로젝트관련 요청 처리 세부 컨트롤러
 * 
 * @author 김원영
 *
 */
@Controller
@RequestMapping("/users")
public class UsersController {

	private static final Logger logger = LoggerFactory
			.getLogger(HomeController.class);

	Cookie[] cookies;

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
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	// public String join(@ModelAttribute("employee")Employee employee) {
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
		if (users != null) {
			result = "이메일이 중복입니다. 다른 이메일을 입력하세요";
			System.out.println(result);
		} else {
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
		if (users != null) {
			result = "닉네임이 중복입니다. 다른 닉네임을 사용하세요.";
			System.out.println(result);
		} else {
			result = "사용가능한 닉네임입니다.";
			System.out.println(result);
		}

		model.addAttribute("resultNickname", result);
		return "/ajaxResult/result";
	}

	/**
	 * 로그인화면요청(GET)
	 */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model) {
		return "/login/result";
	}

	/**
	 * 로그인 요청(POST)
	 */
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(Users users, HttpServletResponse response, Model model) {

		Users loginUsers = usersService.login(users);

		logger.debug("로그인 진입");

		if (loginUsers != null) {
			logger.debug("[로그인]요청(GET)이 들어옴 : " + users.getId()
					+ users.getPassword());
			logger.debug("[로그인] 로그인 성공한 회원 : " + loginUsers.toString());

			Cookie loginCookie = new Cookie("loginId",
					String.valueOf(loginUsers.getUserNo()));
			Cookie loginCookieNickName;
			try {
				loginCookieNickName = new Cookie("loginNickName",
						URLEncoder.encode(loginUsers.getNickname(), "utf-8"));
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
		} else {
			logger.debug("로그인 실패");
			model.addAttribute("loginResult", "등록된 회원이 아닙니다.");

			return "redirect:/";
		}
	}
	/**
	 * introregist 요청
	 */
	@RequestMapping(value="/introregist", method = RequestMethod.POST)
	public String introRegist( Model model,
			@RequestParam(value="name", required=false, defaultValue="")String name,
			@RequestParam(value="email", required=false, defaultValue="")String email,
			@RequestParam(value="password", required=false, defaultValue="")String password){
		
		logger.debug("인트로 레지스트 진입"+"닉네임 : " +name +"이메일 : "+email +" 패스워드 :" +password);
		
		
		
		
		model.addAttribute("nickname", name);
		model.addAttribute("email", email);
		model.addAttribute("password", password);
		return "/registeration";
	}

	/**
	 * 로그아웃 화면요청(GET)
	 */
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(Model model, HttpServletRequest request,
			HttpServletResponse response) {

		cookies = request.getCookies();

		logger.debug("로그아웃 진입");

		if (cookies != null) {
			logger.debug("if문 진입");
			for (Cookie cookie : cookies) {
				String id = cookie.getName();
				if (id.equals("loginId")) {
					System.out.println(id);
					cookie.setMaxAge(0);
					cookie.setPath("/");
					response.addCookie(cookie);

				}/*
				 * else if (id.equals("loginNickName")){ cookie.setMaxAge(0);
				 * cookie.setPath("/"); response.addCookie(cookie); }
				 */
			}
		}

		return "redirect:/";
	}

	/**
	 * 회원정보 수정
	 */
	@RequestMapping(value = "/modifyuser", method = RequestMethod.GET)
	public String modifyuser(
			Model model,
			@RequestParam(value = "userNo", required = false, defaultValue = "") int userNo) {

		logger.debug(String.valueOf(userNo));
		Users user = usersService.userInfo(userNo);
		
		List<Map<String, Object>> articleList = usersService.articleCount(userNo);
		List<Map<String, Object>> commentList = usersService.commentCount(userNo);
		
		int articleCount = articleList.size();
		int commentCount = commentList.size();

		model.addAttribute("articleCount", articleCount);
		model.addAttribute("commentCount", commentCount);
		model.addAttribute("articleList", articleList);
		model.addAttribute("commentList", commentList);
		model.addAttribute("user", user);
		return "/member_edit";
		
	}

	/**
	 * 수정 ajax
	 * 
	 * @throws UnsupportedEncodingException
	 */

	// nickname
	@RequestMapping(value = "/edituser", method = RequestMethod.GET)
	public String edituser(
			Model model,
			@RequestParam(value = "type", required = false, defaultValue = "") String type,
			@RequestParam(value = "value", required = false, defaultValue = "") String value,
			@RequestParam(value = "userNo", required = false, defaultValue = "") int userNo,
			HttpServletRequest request, HttpServletResponse response)
			throws UnsupportedEncodingException {

		logger.debug("타입 = " + type);
		logger.debug("값은 = " + value);
		logger.debug("유저넘버는 = " + userNo);

		String editResult = null;

		if (type.equals("nickname")) {
			logger.debug("닉네임 진입");
			usersService.nicknameEdit(value, userNo);
			editResult = value;

			/*cookies = request.getCookies();
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("loginNickName")) {
					System.out.println(cookie.getValue());
					// cookie.setValue(value);
					cookie.setMaxAge(0);
					cookie.setPath("/");
					response.addCookie(new Cookie("loginNickName", URLEncoder
							.encode(value, "utf-8")));
					System.out.println(cookie.getValue());
					// response.setStatus(0);
					for (Cookie cookie2 : cookies) {
						System.out.println("쿠키 : " + cookie2.getValue());
					}
				}
			}*/

			// return "redirect:/users/modifyuser";
		} else if (type.equals("id")) {
			logger.debug("아이디 진입");
			usersService.emailEdit(value, userNo);
			editResult = value;

		} else if (type.equals("passwd")) {
			logger.debug("비밀번호 진입");
			usersService.passwdEdit(value, userNo);
			editResult = value;

		} else if (type.equals("location")) {
			logger.debug("지역 진입");
			usersService.locationEdit(value, userNo);
			editResult = value;

		} else if (type.equals("programName")) {
			logger.debug("프로그램 진입");
			usersService.programnameEdit(value, userNo);
			editResult = value;

		}

		model.addAttribute("editResult", editResult);
		return "/ajaxResult/editResult";
	}

	/**
	 * 파일 등록
	 */

	/**
	 * 데이트코스 등록 요청
	 */
	@RequestMapping(value="/photo")
	public String registCourse(MultipartHttpServletRequest request,Users user,
			@RequestParam(value = "userNo", required = false, defaultValue = "") int userNo){
		/**
		 *  파일 업로드
		 */
		Map<String, MultipartFile> files = request.getFileMap();
		CommonsMultipartFile cmf1 = (CommonsMultipartFile)files.get("userPhoto");
		//CommonsMultipartFile cmf2 = (CommonsMultipartFile)files.get("ex_course_image");
		String fileName1 = cmf1.getOriginalFilename();
		//user.setPhoto(fileName1);
		String path1 = "C:/Users/garu/git/Project_NewbieSchool/src/main/webapp/resources/images/"+fileName1;
		System.out.println(path1);
		System.out.println(fileName1);
		File file1 = new File(path1);
		if (!file1.isDirectory()) {
			logger.debug("디렉토리가 존재하지 않습니다.");
			//디렉토리 생성
			file1.mkdirs();
			logger.debug("디렉토리 생성 완료.");
		}
		try {
			cmf1.transferTo(file1);
			usersService.registPhoto(fileName1, userNo);
			/**
			 */
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "redirect:/";
	}

	/**
	 *  나의댓글 삭제
	 */
	
	@RequestMapping(value = "/mycommentremove")
	public String mycommentRemove(
			@RequestParam(value = "comment_no") int comment_no,
			@RequestParam(value = "article_no") int article_no,
			@RequestParam(value = "userNo") int userNo, Model model) {
		
		logger.debug("댓글 삭제 진입");
		usersService.mycommentRemove(comment_no);
		
		Users user = usersService.userInfo(userNo);
		
		List<Map<String, Object>> articleList = usersService.articleCount(userNo);
		List<Map<String, Object>> commentList = usersService.commentCount(userNo);
		
		int articleCount = articleList.size();
		int commentCount = commentList.size();

		model.addAttribute("articleCount", articleCount);
		model.addAttribute("commentCount", commentCount);
		model.addAttribute("articleList", articleList);
		model.addAttribute("commentList", commentList);
		model.addAttribute("user", user);
		return "/member_edit";
		
	}
	/*	
	  *//**
	 * 로그인부분
	 */
	/*
	 * @RequestMapping(value = "/login", method = RequestMethod.POST) public
	 * String login(Model model, String userId, String password,
	 * HttpServletResponse response) { User user = null;
	 * 
	 * //유저 확인 user = userService.login(userId, password);
	 * 
	 * //확인후 쿠키 저장 response.addCookie(new Cookie("userId", user.getUserId()));
	 * response.addCookie(new Cookie("emailAddr", user.getEmailAddr()));
	 * model.addAttribute("user", user);
	 * 
	 * return "redirect:/main"; }
	 *//**
	 * 로그아웃부분
	 */
	/*
	 * @RequestMapping(value = "/logout", method = RequestMethod.GET) public
	 * String login( Model model,
	 * 
	 * @CookieValue(value = "id", defaultValue = "null") Cookie userId,
	 * 
	 * @CookieValue(value = "emailAddr", defaultValue = "null") Cookie emailAddr
	 * , HttpServletResponse response) {
	 * 
	 * userId.setMaxAge(0); userId.setPath("/");
	 * 
	 * emailAddr.setMaxAge(0); emailAddr.setPath("/");
	 * 
	 * response.addCookie(userId); response.addCookie(emailAddr); return
	 * "redirect:/main"; }
	 */
}
