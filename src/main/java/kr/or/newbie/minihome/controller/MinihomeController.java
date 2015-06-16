package kr.or.newbie.minihome.controller;


import java.util.Iterator;
import java.util.List;
import java.util.Map;

import kr.or.newbie.HomeController;
import kr.or.newbie.minihome.domain.GuestBook;
import kr.or.newbie.minihome.domain.Users;
import kr.or.newbie.minihome.service.MinihomeService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * 미니홈관련 요청 처리 세부 컨트롤러
 * @author 곽선민
 */

@Controller
@RequestMapping("/minihome")
public class MinihomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private MinihomeService minihomeService;

	public void setAcademicService(MinihomeService minihomeService) {
		this.minihomeService = minihomeService;
	}


	/**
	 * minihome 목록 출력 요청(/minihome/minihome)
	 */
	@RequestMapping(value="/minihome", method=RequestMethod.GET)
	public String minihome(@RequestParam(value="user_no") int userNo, Model model) {
		
		logger.debug("미니홈 요청");
		Users users = minihomeService.showMinihome(userNo);
		List<Map<String, Object>> list = minihomeService.showGuestbook(userNo);
		
		model.addAttribute("users", users);
		model.addAttribute("list", list);
		System.out.println(users);
		return "/minihome";
	}
	
	/**
	 * 방명록 출력 요청(/minihome/guestbook)
	 */
	@RequestMapping(value="/guestbook", method=RequestMethod.POST)
	public String guestbook(GuestBook guestbook, Model model) {
		logger.debug(guestbook.toString());
		logger.debug("방명록 등록 요청");
		
		minihomeService.addGuestbook(guestbook);
		Users users = minihomeService.showMinihome(guestbook.getUserNo());
		List<Map<String, Object>> list = minihomeService.showGuestbook(guestbook.getUserNo());
		model.addAttribute("users", users);
		model.addAttribute("list", list);
		return "/minihome";
	}
	
}
