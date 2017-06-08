package dao;

import java.util.Date;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import modelos.ArticleRss;
import rowmappers.RowMapperListadoIndex;;

public class DAOListadoIndexImpl implements DAOListadoIndex{
	
	/*
	 * ----------------------------------------------------------
	 * Atributos
	 * ----------------------------------------------------------
	 */
	private String mainTable = "articles_rss";
	private String joinTable1 = "rss_feeds";
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
	 * Listar ArticlesRss por periodico y categoría
	 * 
	 * (non-Javadoc)
	 * @see dao.DAOListadoIndex#listar(java.lang.String, int)
	 */
	public List<ArticleRss> listar(int periodico, int section) {
		JdbcTemplate jdbc = new JdbcTemplate(dataSource);
		List<ArticleRss> lista;
		
		String sql = 
				"SELECT pub_date, cover, title, description, "+this.mainTable+".link "
				+ "FROM "+this.mainTable+" "
				+"Inner JOIN "+this.joinTable1+" ON rss_id = "+this.joinTable1+".id "
				+"WHERE newspaper_id = ? "
				+"AND section_id = ?;";
		
		lista = jdbc.query(sql, new Object[]{periodico, section}, new RowMapperListadoIndex());
		return lista;
	}
	
	// ---------------------------------------------------------------------------------------------------

	/*
	 * Listar ArticlesRss por periodico,categoría y fecha
	 * 
	 * (non-Javadoc)
	 * @see dao.DAOListadoIndex#listar(java.lang.String, int)
	 */
	public List<ArticleRss> listar(int periodico, int section, Date pubDate) {
		JdbcTemplate jdbc = new JdbcTemplate(dataSource);
		List<ArticleRss> lista;
		
		String sql = 
				"SELECT pub_date, cover, title, description, "+this.mainTable+".link "
				+ "FROM "+this.mainTable+" "
				+"Inner JOIN "+this.joinTable1+" ON rss_id = "+this.joinTable1+".id "
				+"WHERE newspaper_id = ? "
				+"AND section_id = ? "
				+"AND pub_date = ?;";
		
		lista = jdbc.query(sql, new Object[]{periodico, section,pubDate}, new RowMapperListadoIndex());
		return lista;
	}
	
}
