package kr.or.newbie;

import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import kr.or.newbie.main.service.MainService;
import kr.or.newbie.project.domain.Users;
import kr.or.newbie.users.dao.MybatisUsersDao;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory
			.getLogger(HomeController.class);

	@Autowired
	private MainService mainService;

	public void setMainService(MainService mainService) {
		this.mainService = mainService;
	}


	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		List<Map<String, Object>> map = mainService.showProjectMain();
		
		for (Map<String, Object> map2 : map) {
			Iterator<String> iter = map2.keySet().iterator();
			while (iter.hasNext()) {
				String string = (String) iter.next();
				System.out.println(string + " : " + map2.get(string));
			}
		}
		
		int count = mainService.countGroup();
		
		model.addAttribute("count", count);
		model.addAttribute("list", map);
		logger.info("Welcome home! The client locale is {}.", locale);
		return "index";
	}
	
	/**
	 * 프로젝트 페이징처리 Boolean(/addProject.do)
	 */
	@RequestMapping(value="/addProject.do", method=RequestMethod.GET)
	public String addProject(int pageNo, Model model) {
		System.out.println(pageNo);
		
		List<Map<String, Object>> map = mainService.showProjectAdd(pageNo);
		
		for (Map<String, Object> map2 : map) {
			Iterator<String> iter = map2.keySet().iterator();
			while (iter.hasNext()) {
				String string = (String) iter.next();
				System.out.println(string + " : " + map2.get(string));
			}
		}
		
		
		model.addAttribute("list", map);
		return "/ajaxResult/addproject";
	}
	
	/**
	 * 각종 프로젝트 페이징처리 Boolean(/showProject.do)
	 */
	@RequestMapping(value="/showProject.do", method=RequestMethod.GET)
	public String showProject(int pageNo, String programName, Model model) {
		System.out.println(pageNo);
		System.out.println(programName);
		
		List<Map<String, Object>> map = mainService.showProjectProgramAdd(pageNo, programName);
		
		for (Map<String, Object> map2 : map) {
			Iterator<String> iter = map2.keySet().iterator();
			while (iter.hasNext()) {
				String string = (String) iter.next();
				System.out.println(string + " : " + map2.get(string));
			}
		}
		
		
		model.addAttribute("list", map);
		return "/ajaxResult/addproject";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.POST)
	public String homepost(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		return "index";
	}


	@RequestMapping(value = "/registeration", method = RequestMethod.GET)
	public String registeration(Model model) {

		return "registeration";
	}
	
	@RequestMapping(value = "/registeration2", method = RequestMethod.GET)
	public String registeration2(Model model) {

		return "registeration2";
	}
	
	@RequestMapping(value = "/registeration3", method = RequestMethod.GET)
	public String registeration3(Model model) {

		return "registeration3";
	}

	@RequestMapping(value = "/tutorial", method = RequestMethod.GET)
	public String tutorial(Model model) {

		return "tutorial";
	}
	
	@RequestMapping(value = "/board", method = RequestMethod.GET)
	public String board(Model model) {

		return "board";
	}
	
	@RequestMapping(value = "/boardread", method = RequestMethod.GET)
	public String boardread(Model model) {

		return "board_read";
	}
	
	@RequestMapping(value = "/project", method = RequestMethod.GET)
	public String project(Model model) {
		
		return "project";
	}
	
	@RequestMapping(value = "/email_check", method = RequestMethod.POST)
	public String email_check(String email, String nickname, Model model) {
		System.out.println(email);
		System.out.println(nickname);
		
		MybatisUsersDao dao = new MybatisUsersDao();
		
		model.addAttribute("result", "시발");
		return "/ajaxResult/result";
	}

	@RequestMapping(value = "/project_list", method = RequestMethod.GET)
	public String project_list(Model model) {

		return "project_list";
	}
	
	
	@RequestMapping(value = "/board_write", method = RequestMethod.GET)
	public String board_write(Model model) {

		return "board_write";
	}
	
	@RequestMapping(value = "/minihome", method = RequestMethod.GET)
	public String minihome(Model model) {

		return "minihome";
	}
	
	@RequestMapping(value = "/project_write", method = RequestMethod.GET)
	public String project_write(Model model) {

		return "project_write";
	}

	@RequestMapping(value = "/member_edit", method = RequestMethod.GET)
	public String member_edit(Model model) {
		
		return "member_edit";
	}
}

