package dao;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;


import modelos.Channel;
import rowmappers.RowMapperChannel;

public class DAOChannelImpl implements DAOChannel {
	
	/*
	 * ----------------------------------------------------------
	 * Atributos
	 * ----------------------------------------------------------
	 */
	private String mainTable = "channel";
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
	 * Obtener Channel
	 * 
	 * (non-Javadoc)
	 * @see dao.DAOChannel#read()
	 */
	public Channel read(){
		String sql= "select * from "+mainTable;
		JdbcTemplate jdbc = new JdbcTemplate(dataSource);
		
		Channel c = jdbc.queryForObject(sql, new RowMapperChannel());
		
		return c;
		
	}//Fin de Read

	// ---------------------------------------------------------------
	
	/*
	 * Obtener Channel por id
	 * 
	 * (non-Javadoc)
	 * @see dao.DAOChannel#read(int)
	 */
	public Channel read(int id){
		String sql= "select * from "+mainTable+" where channel_id = ?";
		JdbcTemplate jdbc = new JdbcTemplate(dataSource);
		
		Channel c = jdbc.queryForObject(sql, new Object[]{id},new RowMapperChannel());
		
		return c;
		
	}//Fin de Read
	
}//Fin de DAOChannelImpl
