package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import modelos.ArticleRss;


public class DAOArticleRssImpl implements DAOArticleRss {
	//Mapeo de la base de datos
	class RowMapperArticleRss implements RowMapper<ArticleRss>{
		public ArticleRss mapRow(ResultSet rs, int numRow) throws SQLException{
			ArticleRss a = new ArticleRss(
					rs.getString("link"),
					rs.getString("title"),
					rs.getString("description"),
					rs.getDate("pubDate"),
					rs.getInt("idRss")
					);
			return a;
		}	
	}
	
	//DATASOURCE
		private DataSource dataSource;
		
		public DataSource getDataSource() {
			return dataSource;
		}

		public void setDataSource(DataSource dataSource) {
			this.dataSource = dataSource;
		}
	
	//Metodos
	//Listar para el user normal
	public List<ArticleRss> listar() {
		
		JdbcTemplate jdbc = new JdbcTemplate(dataSource);
		List<ArticleRss> lista;
		String sql = "select * from article_rss order by pub_date";
		
		lista = jdbc.query(sql, new RowMapperArticleRss());
		return lista;
	}
	
	
	
	//CRUD
	//Cear una nueva noticia
	public boolean create(ArticleRss art) {
		
		JdbcTemplate jdbc = new JdbcTemplate(dataSource);
		boolean result = false;
		
		String sql = "insert into article_rss(link,title,description,pub_date,id_rss)"
				+ "values (?,?,?,?,?)";
		
		try{
			jdbc.update(sql, new Object[]{art.getLink(),art.getTitle(),art.getDescription(),
					art.getPubDate(),art.getIdRss()});
			result = true;
		}catch(DataAccessException dae){
			dae.printStackTrace();
		}
		return result;
	}
	
	//Editar nueva noticia
	public boolean update (ArticleRss art){
		JdbcTemplate jdbc = new JdbcTemplate (dataSource);
		boolean result = false;
		String sql = "update article set "
				+"link = ?,"
				+"title = ?,"
				+"description = ?,"
				+"pub_date = ?,"
				+"where id = ?";
		
		try{
			jdbc.update(sql, new Object[]{art.getLink(),art.getTitle(),art.getDescription(),
					art.getPubDate(),art.getId()});
			result = true;
		}catch (DataAccessException dae) {
			dae.printStackTrace();
		}
		return result;
	}
	
	//Read article
	public ArticleRss read(int id){
		String sql= "select * from article_rss where id = ?";
		JdbcTemplate jdbc = new JdbcTemplate(dataSource);
		
		ArticleRss art = jdbc.queryForObject(sql, new Object[]{id}, new RowMapperArticleRss());
		
		return art;
	}
	
	//Borrar article
	public boolean delete(int id){
		String sql = "delete from article where id = ?";
		JdbcTemplate jdbc = new JdbcTemplate(dataSource);
		
		int i = jdbc.update(sql, new Object[]{id});
		return (i == 0);
	}

	
}
