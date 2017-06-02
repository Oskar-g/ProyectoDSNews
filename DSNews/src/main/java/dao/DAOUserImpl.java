package dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import modelos.User;

public class DAOUserImpl implements DAOUser {
	
	//Creamos el row mapper para nuestra base de datos
	class RowMapperUser implements RowMapper<User>{
		public User mapRow (ResultSet rs, int rowNum) throws SQLException{
			User user = new User (
					rs.getInt("id"),
					rs.getString("name"),
					rs.getString("role"));
			return user;
		}
	}
	
	//CReamos el dataSource con sus getters y setters
	private DataSource dataSource;
	
	//Getters y setters
	public DataSource getDataSource() {
		return dataSource;
	}

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	//Metodos
	//Login de user
	public boolean login(User u, String pass) {
		
		String sql = "select id,name,role from users where name = ? and password=md5(?)";
		User us = null;
		JdbcTemplate jdbc = new JdbcTemplate (dataSource);

		try{
			us = jdbc.queryForObject(sql, new Object[]{u.getName(), pass},new RowMapperUser());
			return true;
		}catch(DataAccessException dae){
			dae.printStackTrace();
			return false;
		}
	}
	
	public User getUser(String name){
		String sql = "select id,name,role from users where name = ?";
		JdbcTemplate jdbc = new JdbcTemplate (dataSource);
		int id = 0;
		String role = null;
		User u = new User(id,name,role);

		u = jdbc.queryForObject(sql, new Object[]{u.getName()},new RowMapperUser());
		return u;
	}

	
	

}
