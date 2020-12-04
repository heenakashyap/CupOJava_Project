package com.csis3275.CupOJava_Project.User;

import java.util.Date;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;;

@Component
public class RouteDao {

	JdbcTemplate jdbcTemplate;
	
	private final String SQL_GET_ROUTE = "SELECT * FROM route WHERE id = ?";
	private final String SQL_GET_ORIGIN = "SELECT * FROM route";
	private final String SQL_GET_DESTINATION = "SELECT * FROM route";
	private final String SQL_GET_ORIGIN_DESTINATION_DETAILS = "select CONCAT(SUM(rs.timeToThisStop), ' Minutes') as time, CONCAT(COUNT(rs.stopNumber), ' Stops') as noofstops, GROUP_CONCAT(s.stopName) as stops from routeStop rs join stop s on rs.stopid=s.stopid where rs.direction = 'origin' and rs.routeid=? GROUP By rs.routeid";

	@Autowired
	public RouteDao(DataSource dataSource)	{
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
		
	public List<Routee> getOrigins() {
		return jdbcTemplate.query(SQL_GET_ORIGIN, new RouteMapper());
	}
	
	public Routee getRoute(int routeid) {
		return jdbcTemplate.query(SQL_GET_ROUTE, new RouteMapper(), routeid).get(0);
	}
	
	public List<Routee> getDestinations() {
		return jdbcTemplate.query(SQL_GET_DESTINATION, new RouteMapper());
	}
	
	public List<RouteDetails> getRouteDetails(int routeid) {
		return jdbcTemplate.query(SQL_GET_ORIGIN_DESTINATION_DETAILS, new RouteDetailsMapper(), routeid);
	}
	
//	public List<User> getStudent(int id) {
//		return jdbcTemplate.query(SQL_GET_STUDENT, new UserMapper(), id);
//	}
}
	
	