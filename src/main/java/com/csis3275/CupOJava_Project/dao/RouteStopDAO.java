package com.csis3275.CupOJava_Project.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.csis3275.CupOJava_Project.model.RouteStop;
import com.csis3275.CupOJava_Project.model.RouteStopMapper;

@Component
public class RouteStopDAO {

	JdbcTemplate jdbcTemplate;
	
	private final String SQL_GET_ALL = "SELECT * FROM routeStop";
	private final String SQL_GET_BY_routeID_stopID_direction = "SELECT * FROM routeStop WHERE routeID = ? AND stopID = ? AND direction = ?";
	private final String SQL_CREATE_RouteStop =
			"INSERT INTO routeStop (routeID, stopID, direction, stopNumber, timeToThisStop) VALUES" +
	"(?,?,?,?,?)";
	
	@Autowired
	public RouteStopDAO(DataSource dataSource)	{
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	public List<RouteStop> getAllRouteStops(){
		return jdbcTemplate.query(SQL_GET_ALL, new RouteStopMapper());
	}
	
	public List<RouteStop> getAllRouteStopsBy_routeID_stopID_direction(String routeID, String stopID, String direction)	{
		return jdbcTemplate.query(SQL_GET_BY_routeID_stopID_direction, new RouteStopMapper(), routeID, stopID, direction);
	}
	
	public boolean createRouteStop(RouteStop routeStop)	{
		return jdbcTemplate.update(SQL_CREATE_RouteStop, routeStop.getRouteID(), routeStop.getStopID(), routeStop.getDirection(),
				routeStop.getStopNumber(), routeStop.getTimeToThisStop()) > 0;
	}
}
