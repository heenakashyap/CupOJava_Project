package com.csis3275.CupOJava_Project.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.csis3275.CupOJava_Project.model.Route;
import com.csis3275.CupOJava_Project.model.RouteMapper;

@Component
public class RouteDAO {
	JdbcTemplate jdbcTemplate;
	
	private final String SQL_GET_ALL = "SELECT * FROM route";
	private final String SQL_GET_ALL_BY_routeType = "SELECT * FROM route WHERE routeType = ? ";
	//private final String SQL_GET_ALL_BY_routeType_search = "SELECT * FROM route WHERE routeType = :par1 AND destination LIKE %:par2% OR origin LIKE %:par3%";
	private final String SQL_GET_ALL_BY_routeType_search = "SELECT * FROM route WHERE routeType = ? AND ( destination LIKE %?% OR origin LIKE %?% ) ";

	private final String SQL_GET_Search = "SELECT * FROM route WHERE destination LIKE '%?%' OR origin LIKE '%?%'";
	
	@Autowired
	RouteDAO(DataSource dataSource){
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	public List<Route> getAllRoutes()	{
		return jdbcTemplate.query(SQL_GET_ALL, new RouteMapper());
	}
	
	public List<Route> getAllRoutesByRouteType(String routeType)	{
		return jdbcTemplate.query(SQL_GET_ALL_BY_routeType, new RouteMapper(), routeType);
	}
	
	public List<Route> getAllRoutesByRouteTypeSearch(String routeType, String search, String search1)	{
		
		System.out.println(">>> "+routeType+" "+search+" "+search1);
		 if(routeType != null) {
			 if(routeType != "default") {
				 System.out.println("4");
				 
				Map<String,Object> params = new HashMap<String,Object>();
			    params.put("routeType", routeType);
			    params.put("destination", search);
			    params.put("origin", search1);
			    
			    String SQL_GET_ALL_BY_routeType_search = "SELECT * FROM route WHERE routeType = '"+routeType+"' AND ( destination LIKE '%"+search+"%' OR origin LIKE '%"+search1+"%' ) ";
				    
				 return jdbcTemplate.query(SQL_GET_ALL_BY_routeType_search, new RouteMapper());
				 //return jdbcTemplate.query(SQL_GET_ALL_BY_routeType_search, new RouteMapper(), routeType, search, search1);
			 }
			 
		 }
		 System.out.println("5");
		 return jdbcTemplate.query(SQL_GET_Search, new RouteMapper(), search);		
	}

}
