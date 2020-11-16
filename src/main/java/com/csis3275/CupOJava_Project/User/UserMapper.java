package com.csis3275.CupOJava_Project.User;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class UserMapper implements RowMapper<User> {
	
	public User mapRow(ResultSet resultSet, int i) throws SQLException	{
	
		User user = new User();
		user.setId(resultSet.getInt("id"));
		user.setUsername(resultSet.getString("username"));
		user.setPassword(resultSet.getString("password"));
		user.setFirstName(resultSet.getString("firstName"));
		user.setLastName(resultSet.getString("lastName"));
		return user;
		
	}

}
