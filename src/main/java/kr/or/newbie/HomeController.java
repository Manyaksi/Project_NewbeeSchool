package kr.or.newbie;

import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory
			.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(
				DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

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
	
	@RequestMapping(value = "/email_check")
	public ModelAndView email_check(HttpServletResponse response, String email, String nickname) {

		PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		StringBuffer stringBuffer = new StringBuffer();
		stringBuffer.append("<data>");
		stringBuffer.append("<event>");

		//디비에서 넘어온 email 값으로 중복 체크후 중복이면 0 아니면 1 넘겨줌.
		if(true){
			stringBuffer.append("0");	
		}else{
			stringBuffer.append("1");
		}
		stringBuffer.append("</event>");
		stringBuffer.append("</data>");
		System.out.println(email);
		System.out.println(nickname);
		out.print(stringBuffer.toString());
		//System.out.println(request.getParameter("email"));
		return null;
	}

	@RequestMapping(value = "/project_list", method = RequestMethod.GET)
	public String project_list(Model model) {

		return "project_list";
	}
}