package com.csis3275.CupOJava_Project.User;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class RouteMapper implements RowMapper<Route> {
	
	public Route mapRow(ResultSet resultSet, int i) throws SQLException	{
	
		Route route = new Route();
		route.setId(resultSet.getInt("id"));
		route.setRoutetype(resultSet.getString("routetype"));
		route.setOrigin(resultSet.getString("origin"));
		route.setDestination(resultSet.getString("destination"));
		return route;		
	}
}
