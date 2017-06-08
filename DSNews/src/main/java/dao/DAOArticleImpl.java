package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import modelos.Article;
import modelos.User;

public class DAOArticleImpl implements DAOArticle {

	String mainTable = "articles_desoft";
	
	//Mapeo de la base de datos
	class RowMapperArticleUser implements RowMapper<Article>{
		public Article mapRow(ResultSet rs, int numRow) throws SQLException{
			Article a = new Article(
					rs.getInt("guid"),
					rs.getString("title"),
					rs.getDate("pub_date"),
					rs.getInt("section_id"),
					rs.getInt("user_id")
					);
			return a;
		}	
	}
	class RowMapperArticleSuperUser implements RowMapper<Article>{
		public Article mapRow(ResultSet rs, int numRow) throws SQLException{
			Article a = new Article(
					rs.getInt("guid"),
					rs.getString("link"),
					rs.getString("title"),
					rs.getString("content"),
					rs.getDate("pub_date"),
					rs.getString("description"),
					rs.getString("keywords"),
					rs.getInt("user_id"),
					rs.getInt("channel_id"),
					rs.getInt("section_id")
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
	public List<Article> listar(User u) {
		
		//Añadir where adicional que dependa de que exista o no (null) la request de filter+keyword [where ?=?]
		
		JdbcTemplate jdbc = new JdbcTemplate(dataSource);
		List<Article> lista;
		String sql = "select guid,section_id,title,pub_date,user_id from "+mainTable+" where user_id = ? order by pub_date";
		
		lista = jdbc.query(sql, new Object[]{u.getId()},new RowMapperArticleUser());
		return lista;
	}
	
	//Listar para el superuser
	public List<Article> listarSuperUser(User u) {
		JdbcTemplate jdbc = new JdbcTemplate(dataSource);
		List<Article> lista;
		String sql = "select * from "+mainTable+" order by user_id";
		
		lista = jdbc.query(sql,new RowMapperArticleSuperUser());
		return lista;
	}
	
	
	//CRUD
	//Cear una nueva noticia
	public boolean create(Article a, User u) {
		
		JdbcTemplate jdbc = new JdbcTemplate(dataSource);
		boolean result = false;
		
		String sql = "insert into "+mainTable+"(link,title,content,pub_date,description,keywords,user_id,channel_id,section_id)"
				+ "values (?,?,?,?,?,?,?,?,?)";
		
		try{
			jdbc.update(sql, new Object[]{a.getLink(),a.getTitle(),a.getContent(),
					a.getPubDate(),a.getDescription(),a.getKeywords(),u.getId(),
					a.getChannelId(),a.getSectionId()});
			result = true;
		}catch(DataAccessException dae){
			dae.printStackTrace();
		}
		return result;
	}
	//Editar nueva noticia
	public boolean update (Article a,User u){
		JdbcTemplate jdbc = new JdbcTemplate (dataSource);
		boolean result = false;
		String sql = "update "+mainTable+" set "
				+"link = ?,"
				+"title = ?,"
				+"content = ?,"
				+"pub_date = ?,"
				+"description = ?,"
				+"keywords = ?,"
				+"user_id = ?,"
				+"channel_id = ?,"
				+"section_id = ? "
				+"where guid = ?";
		
		try{
			jdbc.update(sql,new Object[]{a.getLink(),a.getTitle(),a.getContent(),
					a.getPubDate(),a.getDescription(),a.getKeywords(),
					u.getId(),a.getChannelId(),a.getSectionId(),a.getGuid()});
			result = true;
		}catch (DataAccessException dae) {
			dae.printStackTrace();
		}
		return result;
	}
	
	//Read article
	public Article read(int guid){
		String sql= "select * from "+mainTable+" where guid = ?";
		JdbcTemplate jdbc = new JdbcTemplate(dataSource);
		
		Article a = jdbc.queryForObject(sql, new Object[]{guid}, new RowMapperArticleSuperUser());
		
		return a;
	}
	//Borrar article
	public boolean delete(int guid){
		String sql = "delete from "+mainTable+" where guid = ?";
		JdbcTemplate jdbc = new JdbcTemplate(dataSource);
		
		int i = jdbc.update(sql, new Object[]{guid});
		if (i == 0){
			return false;
		}else{
			return true;
		}
	}
	
	
}
