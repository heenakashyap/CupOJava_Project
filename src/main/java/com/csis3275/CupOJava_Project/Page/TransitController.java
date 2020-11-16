package com.csis3275.CupOJava_Project.Page;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.csis3275.CupOJava_Project.User.Route;
import com.csis3275.CupOJava_Project.User.RouteDao;
import com.csis3275.CupOJava_Project.User.User;
import com.csis3275.CupOJava_Project.User.UserDAO;

@Controller
public class TransitController {
	
	@Autowired
	private RouteDao routeDAO;
	
	@RequestMapping("transitSchedules")	
	public ModelAndView showHomePage() {
		
		ModelAndView modelView = new ModelAndView();
		modelView.addObject("routeInfo", false);
		modelView.addObject("origList", routeDAO.getOrigins());
		modelView.setViewName("transitSchedules.jsp");
		return modelView;
	}
		
	@RequestMapping("getOrigDesDetails")	
	public ModelAndView createUser(@RequestParam("origin") int routeid, Model model) {//@RequestParam("destination") String destination, 
		
		System.out.println("origin: "+routeid+" >>>>>>>>> destination: ");//+destination);
		ModelAndView modelView = new ModelAndView();
		modelView.addObject("routeInfo", true);
		modelView.addObject("origList", routeDAO.getOrigins());
		modelView.addObject("routeDetailsList", routeDAO.getRouteDetails(routeid));
		modelView.addObject("route", routeDAO.getRoute(routeid));
		modelView.addObject("origin", routeid);
		//modelView.addObject("destination", destination);
		modelView.setViewName("transitSchedules.jsp");
		return modelView;
	}

}
