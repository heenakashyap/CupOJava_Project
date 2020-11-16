package com.csis3275.CupOJava_Project.User;

import java.util.Date;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;;

@Component
public class UserDAO {

	JdbcTemplate jdbcTemplate;
	
	private final String SQL_GET_ALL = "SELECT * FROM transitUsers";
	private final String SQL_GET_STUDENT = "SELECT * FROM transitUsers WHERE id = ?";
	private final String SQL_CREATE_STUDENT = "INSERT INTO transitUsers (username, password, firstName, lastName, address, city, phoneNo, dob, email) VALUES (?,?,?,?,?,?,?,?,?)";
	private final String SQL_DELETE_STUDENT = "DELETE FROM transitUsers WHERE id = ?";
	private final String SQL_UPDATE_STUDENT = "UPDATE transitUsers SET username= ?, password= ?, firstName= ?, lastName= ?, WHERE id = ?";

	private final String SQL_GET_USER_BY_USERNAME = "SELECT * FROM transitUsers WHERE username = ?";
	
	
	@Autowired
	public UserDAO(DataSource dataSource)	{
		jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	public List<User> getAllStudents()	{
		return jdbcTemplate.query(SQL_GET_ALL, new UserMapper());
		
	}
	
//	public List<User> getStudent(int id) {
//		return jdbcTemplate.query(SQL_GET_STUDENT, new UserMapper(), id);
//	}
	public List<User> getStudent(int id) {
		return jdbcTemplate.query(SQL_GET_STUDENT, new UserMapper(), id);
	}
	
	public boolean createTransitUsers(User user) {
		return jdbcTemplate.update(SQL_CREATE_STUDENT, user.getUsername(), user.getPassword(), user.getFirstName(), user.getLastName(), user.getAddress(), user.getCity(), user.getPhoneNo(), user.getDob(), user.getEmail()) > 0;
	}
	
	public List<User> getUserByUsername(String username) {
		return jdbcTemplate.query(SQL_GET_USER_BY_USERNAME, new UserMapper(), username);
	}
	
	
	public boolean deleteStudent(int idToDelete) {
		return jdbcTemplate.update(SQL_DELETE_STUDENT, idToDelete) > 0;
	}
	
	public boolean updateStudent(User user) {
		return jdbcTemplate.update(SQL_UPDATE_STUDENT, user.getUsername(), user.getPassword(), user.getFirstName(), user.getLastName(), user.getId()) > 0;
	}
}
	
	