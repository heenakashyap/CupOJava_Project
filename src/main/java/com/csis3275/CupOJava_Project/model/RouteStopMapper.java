package com.csis3275.CupOJava_Project.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class RouteStopMapper implements RowMapper<RouteStop> {

	public RouteStop mapRow(ResultSet resultSet, int i) throws SQLException	{
		
		RouteStop routeStop = new RouteStop();
		routeStop.setRouteID(resultSet.getInt("routeID"));
		routeStop.setStopID(resultSet.getInt("stopID"));
		routeStop.setDirection(resultSet.getString("direction"));
		routeStop.setStopNumber(resultSet.getInt("stopNumber"));
		routeStop.setTimeToThisStop(resultSet.getInt("timeToThisStop"));
		return routeStop;
	}
	
}
