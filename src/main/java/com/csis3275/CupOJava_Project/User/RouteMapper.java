package com.csis3275.CupOJava_Project.User;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class RouteMapper implements RowMapper<Routee> {
	
	public Routee mapRow(ResultSet resultSet, int i) throws SQLException	{
	
		Routee route = new Routee();
		route.setId(resultSet.getInt("id"));
		route.setRoutetype(resultSet.getString("routetype"));
		route.setOrigin(resultSet.getString("origin"));
		route.setDestination(resultSet.getString("destination"));
		return route;		
	}
}
