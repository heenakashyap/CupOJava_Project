package com.csis3275.CupOJava_Project.User;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {
	
	@Autowired
	UserDAO userDAO;
	
	//@RequestMapping("okay")
	@RequestMapping("user")
	public ModelAndView showUsers() {
		System.out.println("/home was done");	
		ModelAndView modelView = new ModelAndView();
		
		
		User user = new User();
		user.setUsername("userNamy");
		user.setPassword("mypass");
		user.setFirstName("Joiny");
		user.setLastName("Smith");
		
		//Gets user of id in list
		List<User> thisUser = userDAO.getUser(1);
		//Gets user from list
		user = thisUser.get(0);
		modelView.addObject(user);
		modelView.setViewName("user.jsp");
		
		return modelView;
	}
	
	@RequestMapping("register")	
	public ModelAndView registerUser() {
		
		ModelAndView modelView = new ModelAndView();
		
		modelView.setViewName("registration.jsp");
		return modelView;
	}
	
	@RequestMapping("accountSettings")
	public ModelAndView accountSetting(@RequestParam("id") Integer id) {
		System.out.println("/home was done");	
		ModelAndView modelView = new ModelAndView();
		
		User transitUser = userDAO.getUser(id).get(0);
		
		modelView.addObject("transitUser", transitUser);
		modelView.setViewName("accountSettings.jsp");
		
		return modelView;
	}
	
	@RequestMapping(path="updateUser")	
	public ModelAndView updateUser(@RequestParam("id") Integer id, @ModelAttribute("transitUsers") User user, Model model, HttpServletRequest request) {
		
		userDAO.updateUser(user);
		System.out.println("User updated successfully");
		ModelAndView modelView = new ModelAndView("home.jsp", "message", "User created successfully");
		HttpSession loginSession = request.getSession();
		loginSession.setAttribute("username", user.getUsername());
		System.out.println(user.getUsername());
		System.out.println(user);
		loginSession.setAttribute("id", id);
		modelView.addObject("loggedIn", true);

		model.addAttribute("message", "User updated successfully");
		
		return modelView;
	}
	
	@RequestMapping("createUser")	
	public ModelAndView createUser(@ModelAttribute("transitUsers") User user, Model model, HttpServletRequest request ) {
		
		userDAO.createUsert(user);
		System.out.println("User created successfully***********************************");
		ModelAndView modelView = new ModelAndView("home.jsp", "message", "User created successfully");
		

		model.addAttribute("message", "User created successfully");
		
		return modelView;
	}

}
