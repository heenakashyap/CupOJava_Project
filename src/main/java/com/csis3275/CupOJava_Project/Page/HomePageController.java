package com.csis3275.CupOJava_Project.Page;

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
	public ModelAndView showHomePage() {
		
		ModelAndView modelView = new ModelAndView();
		
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
	
	@RequestMapping("register")	
	public ModelAndView registerUser() {
		
		ModelAndView modelView = new ModelAndView();
		
		modelView.setViewName("Register.jsp");
		return modelView;
	}
	
	@RequestMapping("createUser")	
	public ModelAndView createUser(@ModelAttribute("transitUsers") User user, Model model) {
		
		userDAO.createTransitUsers(user);
		System.out.println("User created successfully***********************************");
		ModelAndView modelView = new ModelAndView("home.jsp", "message", "User created successfully");
		

		//model.addAttribute("message", "User created successfully");
		
		return modelView;
	}

}
