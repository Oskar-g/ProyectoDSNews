package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.security.authentication.encoding.ShaPasswordEncoder;

import models.User;

public class DAOUserImpl implements DAOUser{
	
	class UserRowMapper implements RowMapper<User>{
		
		public User mapRow(ResultSet rs,int numRow) throws SQLException{
			User e=new User(rs.getString("username"),User.Role.valueOf(rs.getString("authority")));
			return e;
		}
		
	}
	
	private DataSource dataSource;
	
	
	public DataSource getDataSource() {
		return dataSource;
	}

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	public boolean recordPassword(String username, String password){
		ShaPasswordEncoder cod=new ShaPasswordEncoder(256);
		password=cod.encodePassword(password,username);
		
		boolean r=false;
		
		JdbcTemplate jdbc=new JdbcTemplate(dataSource);
		
		String sql="update users set password=? where username=?";
		try{
			jdbc.update(
				sql,
				new Object[]{password,username});
			r=true;
		}
		catch(DataAccessException dae){
			dae.printStackTrace();
		}
		return r;	
		
	}
	
	public boolean create(User u,String password){
		boolean r=false;
		
		ShaPasswordEncoder cod=new ShaPasswordEncoder(256);
		password=cod.encodePassword(password,u.getName());
		
		JdbcTemplate jdbc=new JdbcTemplate(dataSource);
		
		String sql="insert into users (username,password,enabled) values (?,?,1)";
		try{
			jdbc.update(
					sql,
					new Object[]{u.getName(),password});
			
			sql="insert into authorities (username,authority) values (?,?)";
			jdbc.update(
					sql,
					new Object[]{u.getName(),u.getRole().name()});
			r=true;
		}
		catch(DataAccessException dae){
			dae.printStackTrace();
		}
		return r;
	}
	
	public User read(String username){
		User u=null;
		JdbcTemplate jdbc=new JdbcTemplate(dataSource);
		String sql="select username,authority from authorities where username=?";
		
		try{
			u=jdbc.queryForObject(sql,new Object[]{username},new UserRowMapper());
		}
		catch(DataAccessException dae){
			dae.printStackTrace();
		}
		return u;
	}
	
	public List<User> listar(){
		List<User> lista=new ArrayList<User>();
		JdbcTemplate jdbc=new JdbcTemplate(dataSource);
		String sql="select username,authority from authorities order by username asc";
		
		try{
			lista=jdbc.query(sql,new UserRowMapper());
		}
		catch(DataAccessException dae){
			dae.printStackTrace();
		}
		return lista;
	}
	
	public boolean delete(String username){
		boolean r=false;
		
		String sql="delete from users where username=?";
		
		JdbcTemplate jdbc=new JdbcTemplate(dataSource);
		
		int n=jdbc.update(sql,new Object[]{username});
		r=n>0;
		
		return r;
	}
	
	public boolean update(User u){
		boolean r=false;
		
		String sql="update authorities set "
					+ "authority=? "
				+ "where username=?";
		
		JdbcTemplate jdbc=new JdbcTemplate(dataSource);
		
		try{
			int n=jdbc.update(
					sql,
					new Object[]{u.getRole().name()});
			r=n>0;
		}
		catch(DataAccessException dae){
			dae.printStackTrace();
		}
		
		return r;
	}

	public User readBy(String username) {
		// TODO Auto-generated method stub
		return null;
	}

	public User readBy(String username, String password) {
		// TODO Auto-generated method stub
		return null;
	}

	public boolean updatePassword(String username, String password) {
		// TODO Auto-generated method stub
		return false;
	}
}
