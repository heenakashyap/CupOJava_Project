package com.csis3275.CupOJava_Project.Page;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.csis3275.CupOJava_Project.dao.RouteDAO;
import com.csis3275.CupOJava_Project.model.Route;


@Controller
public class SearchPageController {
	
	@Autowired
	RouteDAO route;


	@RequestMapping("search")

		public ModelAndView search(HttpServletRequest request, String type, String search) {
		List<Route> routes;
		if (search != null) {
			if(search != "") {
				System.out.println("1"+ search+" "+type);
				routes = route.getAllRoutesByRouteTypeSearch(type, search, search);
			} else {
				System.out.println("2"+ search+" "+type);
				routes = route.getAllRoutesByRouteType(type);
			}
			
			
		} else {
			System.out.println("3"+ search+" "+type);
			routes = route.getAllRoutesByRouteType(type);
		}
		
		
		//List<Route> routes = route.getAllRoutesByRouteType("Bus");
		//List<Route> routes = route.getAllRoutesByRouteType("Bus");
		ModelAndView modelView = new ModelAndView();
		modelView.addObject("routeList", routes);
		modelView.setViewName("search.jsp");

		
		System.out.println(search);
		System.out.println(type);
		
		return modelView;
	}
	
}