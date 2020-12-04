package com.csis3275.CupOJava_Project.Page;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.csis3275.CupOJava_Project.User.User;
import com.csis3275.CupOJava_Project.User.UserDAO;

@Controller
public class HomePageController {
	
	@Autowired
	private UserDAO userDAO;
	
	
	@RequestMapping("home")	
	public ModelAndView showHomePage(HttpServletRequest request) {
		
		ModelAndView modelView = new ModelAndView();
		HttpSession loginSession = request.getSession();
		//Checks login status
		if(loginSession.getAttribute("username") != null) {
			modelView.addObject("loggedIn", true);	
			
		}
		modelView.setViewName("home.jsp");
		return modelView;
	}
	
	@RequestMapping("myAccount")	
	public ModelAndView myAcc() {
		
		ModelAndView modelView = new ModelAndView();
		modelView.addObject("user", "Heena Kashyap");
		modelView.setViewName("user.jsp");
		return modelView;
	}
	
	@RequestMapping("registration")
		public ModelAndView showRegistrationPage() {
		
		ModelAndView modelView = new ModelAndView();
		
		modelView.setViewName("registration.jsp");
		return modelView;
		
	}
	
	@RequestMapping("register2")	
	public ModelAndView registerUser() {
		
		ModelAndView modelView = new ModelAndView();
		
		modelView.setViewName("Register.jsp");
		return modelView;
	}
	
	@RequestMapping("createUser2")	
	public ModelAndView createUser(@ModelAttribute("transitUsers") User user, Model model) {
		
		userDAO.createTransitUsers(user);
		System.out.println("User created successfully***********************************");
		ModelAndView modelView = new ModelAndView("home.jsp", "message", "User created successfully");
		

		//model.addAttribute("message", "User created successfully");
		
		return modelView;
	}
			

}
