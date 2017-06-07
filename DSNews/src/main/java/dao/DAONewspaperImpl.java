package dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;

import modelos.Newspaper;
import rowmappers.RowMapperNewspaper;

public class DAONewspaperImpl implements DAONewspaper{
	
	/*
	 * ----------------------------------------------------------
	 * Atributos
	 * ----------------------------------------------------------
	 */
	private String mainTable = "newspapers";
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
	 * READ		(M�todos CRUD) 
	 * ----------------------------------------------------------
	 */
	
	/*
	 * Obtener Periodico
	 *
	 * (non-Javadoc)
	 * @see dao.DAOSection#getSection(int)
	 */
	public Newspaper getNewspaper(int id) {
		JdbcTemplate jdbc = new JdbcTemplate(dataSource);
		
		String sql = "SELECT * "
				+ "FROM "+this.mainTable+" "
				+ "WHERE id = ?";
			
		try{
			Newspaper newspaper = jdbc.queryForObject(sql, new Object[]{id}, new RowMapperNewspaper());	
			return newspaper;
			
		}catch(DataAccessException dae){
			dae.printStackTrace();
		}
		
		return null;
		
	}//Fin de getNewspaper
	
	/*
	 *----------------------------------------------------------
	 * LIST		(M�todos CRUD) 
	 * ---------------------------------------------------------
	 */
	
	/*
	 * Listar Periodicos
	 * 
	 * (non-Javadoc)
	 * @see dao.DAOSection#listar()
	 */
	public List<Newspaper> listar() {
		JdbcTemplate jdbc = new JdbcTemplate(dataSource);

		String sql = "SELECT * "
				+ "FROM "+this.mainTable+" "
				+ "ORDER BY id";		
		
			List<Newspaper> lista = jdbc.query(sql,new RowMapperNewspaper());
			
			return lista;
		
	}//Fin de List
	
}//Fin de DAONewspaperImpl
