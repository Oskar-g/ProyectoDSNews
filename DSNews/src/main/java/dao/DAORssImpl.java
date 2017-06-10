package dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;


import modelos.Rss;
import rowmappers.RowMapperRss;

public class DAORssImpl implements DAORss{
	
	/*
	 * ----------------------------------------------------------
	 * Atributos
	 * ----------------------------------------------------------
	 */
	private String mainTable = "rss_feeds";
	private String joinTable1 = "newspapers";
	
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
	 * LIST		(Métodos CRUD) 
	 * ----------------------------------------------------------
	 */
	
	/*
	 * Crear RSS
	 * (non-Javadoc)
	 * @see dao.DAORss#create(modelos.Rss)
	 */
	public boolean create(Rss r) {
		JdbcTemplate jdbc = new JdbcTemplate(dataSource);
		
		String sql = "INSERT INTO "+this.mainTable+"(link,section_id,newspaper_id) "
				+ "VALUES (?,?,?)";
		
		try{
			jdbc.update(sql, new Object[]{r.getLink(),r.getSectionId(),r.getNewspaperId()});
			return true;
			
		}catch(DataAccessException dae){
			dae.printStackTrace();
		}
		return false;
	}
	
	/*
	 *----------------------------------------------------------
	 * LIST		(Métodos CRUD) 
	 * ----------------------------------------------------------
	 */
	
	/* Listar RSS
	 * 
	 * (non-Javadoc)
	 * @see dao.DAORss#listar()
	 */
	public List<Rss> listar() {
		JdbcTemplate jdbc = new JdbcTemplate(dataSource);

		String sql = "SELECT * "
				+ "FROM "+this.mainTable+" "
				+ "ORDER BY section_id";	
		
		List<Rss> lista = jdbc.query(sql, new Object[]{},new RowMapperRss().mapperRss);
		
		return lista;
	}

	public List<Rss> listarTodo() {
		JdbcTemplate jdbc = new JdbcTemplate(dataSource);

		String sql = "SELECT * "
				+ "FROM "+this.mainTable+" "
				+ "INNER JOIN "+this.joinTable1+" ON newspaper_id = "+this.joinTable1+".id "
				+ "ORDER BY section_id";	
		
		List<Rss> lista = jdbc.query(sql, new Object[]{},new RowMapperRss().mapperRssPeriodico);
		
		return lista;
	}

}
