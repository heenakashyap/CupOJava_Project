package com.csis3275.CupOJava_Project.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.csis3275.CupOJava_Project.model.Stop;
import com.csis3275.CupOJava_Project.model.StopMapper;

@Component
public class StopDAO {

		JdbcTemplate jdbcTemplate;
	
		public String SQL_GET_ALL = "SELECT * FROM stop";
		
		
		@Autowired
		public StopDAO(DataSource dataSource)	{
			jdbcTemplate = new JdbcTemplate(dataSource);
		}
		
		public List<Stop> getAllStops(){
			return jdbcTemplate.query(SQL_GET_ALL, new StopMapper());
		}
}
