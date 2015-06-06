package kr.or.newbie.tutorial.devprogram.controller;

import kr.or.newbie.HomeController;
import kr.or.newbie.tutorial.devprogram.service.DevprogramService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * 프로그램설치글 요청 처리 세부 컨트롤러
 * @author 소라
 *
 */

@Controller
@RequestMapping("/tutorial")
public class DevprogramController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@Autowired
	private DevprogramService devprogramService;
	
	public void setDevprogramService(DevprogramService devprogramService){
		this.devprogramService = devprogramService;
	}
	
	/**
	 *  프로그램 설치글 등록(/add)
	 */
	@RequestMapping("/add")
	public String test9(){
		logger.debug("");
	   return "/dd";      
	}
	
	
	
	
	
}



