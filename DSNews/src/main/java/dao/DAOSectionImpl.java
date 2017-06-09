package dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;

import modelos.Section;
import rowmappers.RowMapperSection;

public class DAOSectionImpl implements DAOSection {
	
	/*
	 * ----------------------------------------------------------
	 * Atributos
	 * ----------------------------------------------------------
	 */
	private String mainTable = "sections";
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
	 * Obtener Sección
	 * 
	 * (non-Javadoc)
	 * @see dao.DAOSection#getSection(int)
	 */
	public Section getSection(int id) {
		JdbcTemplate jdbc = new JdbcTemplate(dataSource);
		
		String sql = "SELECT * "
				+ "FROM "+this.mainTable+" "
				+ "WHERE id = ?";
			
		try{
			Section section = jdbc.queryForObject(sql, new Object[]{id}, new RowMapperSection());	
			return section;
			
		}catch(DataAccessException dae){
			dae.printStackTrace();
		}
		
		return null;
		
	}//Fin de getSection
	
	/*
	 *----------------------------------------------------------
	 * LIST		(Métodos CRUD) 
	 * ---------------------------------------------------------
	 */
	
	/*
	 * Listar Secciones
	 * 
	 * (non-Javadoc)
	 * @see dao.DAOSection#listar()
	 */
	public List<Section> listar() {
		JdbcTemplate jdbc = new JdbcTemplate(dataSource);

		String sql = "SELECT * "
				+ "FROM "+this.mainTable+" "
				+ "ORDER BY id";		
		
			List<Section> lista = jdbc.query(sql,new RowMapperSection());
			
			return lista;
		
	}//Fin de List
	
}//Fin de DAOSectionImpl
