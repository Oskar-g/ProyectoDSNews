package dao;

import javax.sql.DataSource;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;


import modelos.User;
import rowmappers.RowMapperUser;

public class DAOUserImpl implements DAOUser {
		
	/*
	 * ----------------------------------------------------------
	 * Atributos
	 * ----------------------------------------------------------
	 */
	private String mainTable = "users";
	private DataSource dataSource;
	
	/*
	 *----------------------------------------------------------
	 * Getters & Settes
	 * ----------------------------------------------------------
	 */
	public DataSource getDataSource() {
		return dataSource;
	}

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	/*
	 *----------------------------------------------------------
	 * READ		(Métodos CRUD) 
	 * ----------------------------------------------------------
	 */
	
	/* 
	 * Hacer login de usuario
	 * 
	 * (non-Javadoc)
	 * @see dao.DAOUser#login(modelos.User, java.lang.String)
	 */
	public boolean login(User u, String pass) {
		
		String sql = "SELECT id,name,role "
					+ "FROM "+this.mainTable+" "
					+ "WHERE name = ? "
					+ "AND password = md5(?)";
		
		JdbcTemplate jdbc = new JdbcTemplate (dataSource);

		try{
			jdbc.queryForObject(sql, new Object[]{u.getName(), pass},new RowMapperUser());
			return true;
			
		}catch(DataAccessException dae){
			dae.printStackTrace();
		}
		
		return false;
		
	}//Fin de login
	
	// ----------------------------------------------------------
		
	/* 
	 * Obtener datos de usuario por su nombre
	 *  
	 * (non-Javadoc)
	 * @see dao.DAOUser#getUser(java.lang.String)
	 */
	public User getUser(String name){

		String sql = "SELECT id, name, role "
					+ "FROM "+this.mainTable+" "
					+ "WHERE name = ?";
		
		JdbcTemplate jdbc = new JdbcTemplate (dataSource);
		
		try{
			User user = jdbc.queryForObject(sql, new Object[]{name},new RowMapperUser());	
			return user;
			
		}catch(DataAccessException dae){
			dae.printStackTrace();
		}
		
		return null;
		
	}//Finde getUser
	
}//Fin de DAOUserImpl
