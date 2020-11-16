package com.csis3275.CupOJava_Project.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {
	
	@Autowired
	UserDAO data;
	
	@RequestMapping("okay")
	public ModelAndView showUsers() {
		System.out.println("/home was done");	
		ModelAndView modelView = new ModelAndView();
		
		
		User user = new User();
		user.setUsername("userNamy");
		user.setPassword("mypass");
		user.setFirstName("Joiny");
		user.setLastName("Smith");
		
		//Gets user of id in list
		List<User> thisUser = data.getStudent(1);
		//Gets user from list
		user = thisUser.get(0);
		modelView.addObject(user);
		modelView.setViewName("user.jsp");
		
		return modelView;
	}

}
