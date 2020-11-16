package com.csis3275.CupOJava_Project.User;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class RouteDetailsMapper implements RowMapper<RouteDetails> {
	
	public RouteDetails mapRow(ResultSet resultSet, int i) throws SQLException	{
	
		RouteDetails route = new RouteDetails();
		route.setTime(resultSet.getString("time"));
		route.setNoofstops(resultSet.getString("noofstops"));
		route.setStops(resultSet.getString("stops"));
		return route;		
	}
}
