package com.csis3275.CupOJava_Project.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class StopMapper implements RowMapper<Stop> {

	public Stop mapRow(ResultSet resultSet, int i) throws SQLException	{
		
		Stop stop = new Stop();
		stop.setStopID(resultSet.getInt("stopID"));
		stop.setStopName(resultSet.getNString("stopName"));
		return stop;
	}
}
