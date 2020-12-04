package com.csis3275.CupOJava_Project.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class RouteMapper implements RowMapper<Route> {

	public Route mapRow(ResultSet resultSet, int i) throws SQLException {
		
		Route route = new Route();
		route.setId(resultSet.getInt("id"));
		route.setRouteType(resultSet.getString("routeType"));
		route.setDestination(resultSet.getString("destination"));
		route.setOrigin(resultSet.getString("origin"));
		return route;
	}
}
