package com.csis3275.CupOJava_Project.Page;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LogoutPageController {
	
	@RequestMapping("logout")	
		public ModelAndView logout(HttpServletRequest request) {
			ModelAndView modelView = new ModelAndView();
			modelView.setViewName("home.jsp");
			
			
			
			HttpSession loginSession = request.getSession();
			if(loginSession.getAttribute("username") != null) {
				loginSession.invalidate();
				modelView.addObject("loggedIn", false);	
				
			}
			
			return modelView;
		}
	

}
