package com.csis3275.CupOJava_Project.Page;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.csis3275.CupOJava_Project.User.User;
import com.csis3275.CupOJava_Project.User.UserDAO;

@Controller
public class LoginPageController {
	
	@Autowired
	UserDAO user;
	
	@RequestMapping("login")
	public ModelAndView login(HttpServletRequest request) {
		ModelAndView modelView = new ModelAndView();
		
		
		HttpSession loginSession = request.getSession();
		//Checks login status
		if(loginSession.getAttribute("username") != null) {
			modelView.addObject("loggedIn", true);	
			
		}
		
		modelView.setViewName("login.jsp");
		return modelView;
	}
	
	@RequestMapping("loginProcess")
	public ModelAndView loginProcess(HttpServletRequest request, String username, String password)	{
		ModelAndView modelView = new ModelAndView();
		
		//Checks database for login credentials
		List<User> userList = user.getUserByUsername(username);
		String error = "Incorrect username or password entered";
		if(userList.isEmpty() == false) {
			User loginUser = userList.get(0);
			System.out.println(loginUser.getPassword() + password);
			if(loginUser.getPassword().equals(password)) {
				HttpSession loginSession = request.getSession();
				loginSession.setAttribute("username", loginUser.getUsername());
				loginSession.setAttribute("id", loginUser.getId());
				modelView.addObject("loggedIn", true);
				
				modelView.setViewName("home.jsp");
			} else {
				modelView.setViewName("login.jsp");
				
				modelView.addObject("error", error.toString());
			}
		} else {
			modelView.setViewName("login.jsp");
			modelView.addObject("error", error.toString());

		}
		
		
		
		//Login user not equal to null and passwords match
		
		
		
		//Gives or creates the login session
		
	
		//loginSession.setAttribute(name, value);
		return modelView; 
	}
}
