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
	 *  프로그램 목록요청
	 */
	@RequestMapping(value="/tutorial")
	public String list(Model model){
		List<Map<String, Object>> map = devprogramService.showDevprogramList();
		model.addAttribute("list", map);
		System.out.println("ddd");
		return "/tutorial";
	}
	
	/**
	 * 설치글 상세보기
	 */
	@RequestMapping(value="/tutorial", method=RequestMethod.GET)
	public String detail(@RequestParam(value="program_name") String programName, @RequestParam(value="program_os") String programOs,Model model){
		System.out.println(programName);
	//	Map<String, Object> map = devprogramService.showDevprogramdetail(programName, programOs);
		Devprogram devprogram = devprogramService.showDevprogramdetail(programName, programOs);
		List<Map<String, Object>> devcommap = devprogramService.commentList(programName, programOs);
		System.out.println(devprogram);
	//	model.addAttribute("map", map);
		model.addAttribute("devprogram", devprogram);
		model.addAttribute("commentList", devcommap);
		return "/tutorial";
	}

	
	/**
	 * 댓글 등록
	 */
	@RequestMapping(value="/tutorial", method=RequestMethod.POST)
	public String commentAdd(@RequestParam(value="program_name") String programName,
			@RequestParam(value="reviewContent") String reviewContent,
			@RequestParam(value="userNo") int userNo,
			@RequestParam(value="reviewNo") int reviewNo){
		logger.debug("등록진입");
		logger.debug("파라미터값들" + programName + "2. " + reviewContent + "3. "+ userNo + "4. " + reviewNo);
		devprogramService.commentAdd(programName, reviewContent, userNo, reviewNo);
		return "redirect:/tutorial?program_name=&program_os=" + programName;
//		return "redirect:/loveNTread?boardId=4&articleId="+someBoardReply.getArticleId();
//		return "redirect:/board/boardread?article_no=" + article_no;
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



