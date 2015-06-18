package kr.or.newbie.intercepter;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.newbie.users.controller.UsersController;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AuthCheckIntercepter extends HandlerInterceptorAdapter {
	
	private static final Logger logger = LoggerFactory.getLogger(UsersController.class);
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		
		
		String loginCookie = null;
		Cookie[] Cookies = request.getCookies();
			for(Cookie cookie : Cookies){
				String name = cookie.getName();
					if(name.equals("loginId")){
						loginCookie = cookie.getValue();
					}
			}
			
			if (loginCookie == null) {
				logger.debug("[인터셉터실행]로그인되지 않은 사용자는 사용할 수 없음");
				response.sendRedirect("/user/login");
				return false;
			}else{
				return true;
			}
			
	}
}
