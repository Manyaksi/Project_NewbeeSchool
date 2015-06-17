package kr.or.newbie.tutorial.devprogram.controller;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

import kr.or.newbie.HomeController;
import kr.or.newbie.tutorial.devprogram.domain.Devcomment;
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
	 * 설치글 상세보기
	 */
	@RequestMapping(value="/tutorial", method=RequestMethod.GET)
	public String detail(@RequestParam(value="program_name") String programName, @RequestParam(value="program_os") String programOs,Model model){
		System.out.println(programName + ", " + programOs);
		//	Map<String, Object> map = devprogramService.showDevprogramdetail(programName, programOs);
		Devprogram devprogram = devprogramService.showDevprogramdetail(programName, programOs);
		System.out.println(devprogram.toString());
		List<Map<String, Object>> devcommap = devprogramService.commentList(programName, programOs);
//		List<Map<String, Object>> map = devprogramService.showDevprogramList(programName, programOs);
//		for (Map<String, Object> map2 : map) {
//			Iterator<String> iter = map2.keySet().iterator();
//			while (iter.hasNext()) {
//				String string = (String) iter.next();
//				System.out.println(string + " : " + map2.get(string) );
//			}
//		}
//		model.addAttribute("showDevprogramList", map);
//		model.addAttribute("map", map);
		model.addAttribute("devprogram", devprogram);
		model.addAttribute("commentList", devcommap);
		return "/tutorial";
	}

	/**
	 * 댓글 등록
	 */
	@RequestMapping(value="/addcomment", method=RequestMethod.POST)
	public String commentAdd(@RequestParam(value="programName") String programName, @RequestParam(value="programOs") String programOs,
			@RequestParam(value="reviewContent") String reviewContent,
			@RequestParam(value="userNo") int userNo){
		logger.debug("등록진입");
		logger.debug("파라미터값들" + programName + "2. " + reviewContent + "3. " + userNo + "4. ");
		devprogramService.commentAdd(programName, programOs, reviewContent, userNo);
		return "redirect:/tutorial/tutorial?program_name="+programName+"&program_os=" + programOs;
	}
	  
	/**
	 * 댓글 삭제
	 */
	@RequestMapping(value="/commentDelete")
	public String commentDelete(@RequestParam(value="review_no")int review_no, @RequestParam(value="program_name") String program_name, @RequestParam(value="program_os") String program_os){
		logger.debug("삭제 진입");
		devprogramService.commentDelete(review_no);
		return "redirect:/tutorial/tutorial?program_name=" + program_name + "&program_os="+program_os;
		//"redirect:/tutorial/tutorial?review_no="+review_no
	}
	
	/*
	//댓글목록 요청
	@RequestMapping(value="/tutorial")
	public String commentlist(Model model){
		List<Map<String, Object>> list = devprogramService.commentList(programName, userNo);
		model.addAttribute("list", list);
		System.out.println("댓글 목록");
		return "/tutorial";
	}
	
	//댓글 상세보기
	@RequestMapping(value="/tutorial", method=RequestMethod.GET)
	public String commentDetail(@RequestParam(value="program_name") String programName, int userNo, Model model){
		System.out.println(programName);
		Devcomment devcomment = devprogramService.commentDetail(programName, userNo);
		model.addAttribute("devcomment", devcomment);
		return "/tutorial";
	}
	
	*/
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



