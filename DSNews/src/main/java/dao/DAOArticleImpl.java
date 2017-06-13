package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import modelos.Article;
import modelos.Section;
import modelos.User;

public class DAOArticleImpl implements DAOArticle {

	
	/*
	 * ----------------------------------------------------------
	 * Atributos
	 * ----------------------------------------------------------
	 */
	String mainTable = "articles_desoft";
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
	
	
	class RowMapperArticlesUser implements RowMapper<Article>{
		public Article mapRow(ResultSet rs, int numRow) throws SQLException{
			
			Section s = new Section();
			s.setName(rs.getString("sections.name"));

			User us = new User();
			us.setName(rs.getString("users.name"));
			
			Article a = new Article();
			a.setGuid(rs.getInt("guid"));
			a.setTitle(rs.getString("title"));
			a.setPubDate(rs.getDate("pub_date"));
			a.setUser(us);
			a.setSection(s);
				
			return a;
		}	
	}

	
	class RowMapperArticleMaxGUID implements RowMapper<Article>{
		public Article mapRow(ResultSet rs, int numRow) throws SQLException{
			
			Article a = new Article();
			a.setGuid(rs.getInt("guid"));
			
			return a;
		}	
	}

	class RowMapperArticles implements RowMapper<Article>{
		public Article mapRow(ResultSet rs, int numRow) throws SQLException{			
			Article a = new Article();
				a.setGuid(rs.getInt("guid"));
				a.setLink(rs.getString("link"));
				a.setTitle(rs.getString("title"));
				a.setContent(rs.getString("content"));
				a.setPubDate(rs.getDate("pub_date"));
				a.setDescription(rs.getString("description"));
				a.setKeywords(rs.getString("keywords"));
				a.setUserId(rs.getInt("user_id"));
				a.setChannelId(rs.getInt("channel_id"));
				a.setSectionId(rs.getInt("section_id"));
			return a;
		}	
	}
	
	/*
	 *----------------------------------------------------------
	 * CREATE		(Métodos CRUD) 
	 * ----------------------------------------------------------
	 */
	public boolean create(Article a) {
		
		JdbcTemplate jdbc = new JdbcTemplate(dataSource);
		boolean result = false;
		
		String sql = "insert into "+mainTable+"(guid,link,title,content,pub_date,description,keywords,user_id,channel_id,section_id)"
				+ "values (?,?,?,?,now(),?,?,?,?,?)";
		
		try{
			jdbc.update(sql, new Object[]{a.getGuid(),a.getLink(),a.getTitle(),a.getContent(),
					a.getDescription(),a.getKeywords(),a.getUserId(),
					a.getChannelId(),a.getSectionId()});
			result = true;
		}catch(DataAccessException dae){
			dae.printStackTrace();
		}
		return result;
	}
	
	/*
	 *----------------------------------------------------------
	 * READ		(Métodos CRUD) 
	 * ----------------------------------------------------------
	 */
	public Article read(int guid){
		String sql= "select * from "+mainTable+" where guid = ?";
		JdbcTemplate jdbc = new JdbcTemplate(dataSource);
		
		Article a = jdbc.queryForObject(sql, new Object[]{guid}, new RowMapperArticles());
		
		return a;
	}
	
	
	public Article getMax(){
		String sql= "SELECT ifnull(MAX(guid),0)+1 as 'guid' FROM "+mainTable+";";
		JdbcTemplate jdbc = new JdbcTemplate(dataSource);
		
		Article a = jdbc.queryForObject(sql, new RowMapperArticleMaxGUID());
		
		return a;
	}
	
	
	/*
	 *----------------------------------------------------------
	 * UPDATE		(Métodos CRUD) 
	 * ----------------------------------------------------------
	 */
	public boolean update (Article a){
		JdbcTemplate jdbc = new JdbcTemplate (dataSource);
		boolean result = false;
		String sql = "update "+mainTable+" set "
				+"link = ?,"
				+"title = ?,"
				+"content = ?,"
				+"pub_date = now(),"
				+"description = ?,"
				+"keywords = ?,"
				+"section_id = ? "
				+"where guid = ?";
		
		try{
			jdbc.update(sql,new Object[]{a.getLink(),a.getTitle(),a.getContent(),
					a.getDescription(),a.getKeywords(),
					a.getSectionId(),a.getGuid()});
			result = true;
		}catch (DataAccessException dae) {
			dae.printStackTrace();
		}
		return result;
	}
	


	/*
	 *----------------------------------------------------------
	 * DELETE		(Métodos CRUD) 
	 * ----------------------------------------------------------
	 */
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

	/*
	 *----------------------------------------------------------
	 * LIST		(Métodos CRUD) 
	 * ----------------------------------------------------------
	 */
	public List<Article> listarSuperUser() {
		JdbcTemplate jdbc = new JdbcTemplate(dataSource);
		List<Article> lista;
		String sql = "SELECT guid, sections.name, title, pub_date, users.name "
				+ "FROM sections "
				+ "INNER JOIN "+mainTable+" ON section_id = sections.id "
				+ "INNER JOIN users ON user_id = users.id "
				+ "order by guid;";
		
		lista = jdbc.query(sql,new RowMapperArticlesUser());
		return lista;
	}
	
	public List<Article> listar(User u) {
		
		//Añadir where adicional que dependa de que exista o no (null) la request de filter+keyword [where ?=?]
		
		JdbcTemplate jdbc = new JdbcTemplate(dataSource);
		List<Article> lista;
		String sql = "SELECT guid, sections.name, title, pub_date, users.name "
					+ "FROM sections "
					+ "INNER JOIN "+mainTable+" ON section_id = sections.id "
					+ "INNER JOIN users ON user_id = users.id "
					+ "WHERE user_id = ? "
					+ "ORDER BY pub_date;";
		
		lista = jdbc.query(sql, new Object[]{u.getId()},new RowMapperArticlesUser());
		return lista;
	}
	
	public List<Article> buscar(String filter, String keyword) {
		JdbcTemplate jdbc = new JdbcTemplate(dataSource);
		List<Article> lista;
		
		keyword = "%" + keyword + "%";
		
		String sql = "SELECT guid, sections.name, title, pub_date, users.name "
				+ "FROM sections "
				+ "INNER JOIN "+mainTable+" ON section_id = sections.id "
				+ "INNER JOIN users ON user_id = users.id "
				+ "WHERE "+filter+" like ? "
				+ "ORDER BY pub_date;";
		
		lista = jdbc.query(sql,new Object[]{keyword},new RowMapperArticlesUser());
		return lista;
	}


	public List<Article> buscar(String filter, String keyword, int userId) {
		JdbcTemplate jdbc = new JdbcTemplate(dataSource);
		List<Article> lista;
		
		keyword = "%" + keyword + "%";
				
		String sql = "SELECT guid, sections.name, title, pub_date, users.name "
				+ "FROM sections "
				+ "INNER JOIN "+mainTable+" ON section_id = sections.id "
				+ "INNER JOIN users ON user_id = users.id "
				+ "WHERE "+filter+" like ? AND user_id = ? "
				+ "ORDER BY pub_date;";	
		
		lista = jdbc.query(sql,new Object[]{keyword,userId},new RowMapperArticlesUser());
		return lista;
	}

	
	
	public List<Article> listarRss(int section) {
		JdbcTemplate jdbc = new JdbcTemplate(dataSource);
		List<Article> lista;
				
		String sql = "SELECT * FROM "+mainTable+" where section_id = ? ORDER BY UNIX_TIMESTAMP(pub_date) DESC;";
		
		lista = jdbc.query(sql,new Object[]{section},new RowMapperArticles());
		return lista;
	}
	
}
