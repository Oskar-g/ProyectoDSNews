package dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;

import modelos.Article;
import modelos.Newspaper;
import modelos.User;
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
	 * READ		(Métodos CRUD) 
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
	 * LIST		(Métodos CRUD) 
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
	

	/*
	 *----------------------------------------------------------
	 * CREATE		(Métodos CRUD) 
	 * ---------------------------------------------------------
	 */
	
	/*
	 * Crear Periodicos
	 * 
	 * (non-Javadoc)
	 * @see dao.DAOSection#crear()
	 */
	public boolean create(Newspaper n) {
		
		JdbcTemplate jdbc = new JdbcTemplate(dataSource);
		boolean result = false;
		
		String sql = "insert into "+mainTable+"(name,logo)"
				+ "values (?,?)";
		
		try{
			jdbc.update(sql, new Object[]{n.getName(),n.getLogo()});
			result = true;
		}catch(DataAccessException dae){
			dae.printStackTrace();
		}
		return result;
	}//Fin de Create
	
}//Fin de DAONewspaperImpl
