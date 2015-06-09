package kr.or.newbie.tutorial.devprogram.controller;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

import kr.or.newbie.HomeController;
import kr.or.newbie.tutorial.devprogram.domain.Devprogram;
import kr.or.newbie.tutorial.devprogram.service.DevprogramService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


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
	 
	@RequestMapping("/add")
	public String regist(){
		logger.debug("");
	   return "/add";      
	}
	*/
	

	
	/**
	 *  프로그램 목록요청
	 */
	@RequestMapping(value="/tutorials")
	public String list(Model model){
		List<Map<String, Object>> map = devprogramService.showDevprogramList();
		model.addAttribute("list", map);
		System.out.println("ddd");
		return "/tutorial";
	}
	
	
	/**
	 * 상세보기
	 */
	@RequestMapping(value="/tutorial", method=RequestMethod.GET)
	public String detail(@RequestParam(value="program_name") String programName,Model model){
		System.out.println(programName);
		Devprogram devprogram = devprogramService.showDevprogramdetail(programName);
		System.out.println(devprogram);
		model.addAttribute("devprogram", devprogram);
		return "/tutorial";
	}
	
	/*@RequestMapping(value="/project_detail", method=RequestMethod.POST)
	public String detail(@RequestParam(value="groupNo") int groupNo, Model model) {
		System.out.println(groupNo);
		Map<String, Object> map = projectService.showProjectdetail(groupNo);
		List<Map<String, Object>> mapList = projectService.showEnterProject(groupNo);
		for (Map<String, Object> map2 : mapList) {
			Iterator<String> ddd = map2.keySet().iterator();
			while (ddd.hasNext()) {
				String string = (String) ddd.next();
				System.out.println(string);
				
			}
		}
		
		model.addAttribute("detailList", map);
		model.addAttribute("userList",mapList);
		return "/project";
	}
	*/
	
}



