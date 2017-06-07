package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import modelos.ArticleRss;
import modelos.ListadoIndex;

public class DAOListadoIndexImpl implements DAOListadoIndex{
	
	//Mapeo de la base de datos
		class RowMapperListadoIndex implements RowMapper<ArticleRss>{
			public ArticleRss mapRow(ResultSet rs, int numRow) throws SQLException{
				ArticleRss ArtRss = new ArticleRss(
					rs.getString("link"),
					rs.getString("title"),
					rs.getString("description"),
					rs.getDate("pub_date"),
					rs.getString("cover"),
					rs.getString("name")
					);
				return ArtRss;
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

		public ListadoIndex create(String periodico, int categoria) {
			ListadoIndex lista = null;
			List<ArticleRss> listadoArticulos = this.listar(periodico, categoria);
			if (! listadoArticulos.isEmpty()) {
				lista = new ListadoIndex(listadoArticulos.get(0).getCategoria(), listadoArticulos); 
			}
			
			return lista;
		}

		public ListadoIndex create(String periodico, int categoria, Date pubDate) {
			ListadoIndex lista = null;
			List<ArticleRss> listadoArticulos = this.listar(periodico, categoria,pubDate);
			if (! listadoArticulos.isEmpty()) {
				lista = new ListadoIndex(listadoArticulos.get(0).getCategoria(), listadoArticulos); 
			}
			return lista;
		}
		
	
		
		//Listar por periodico y categoria
		public List<ArticleRss> listar(String periodico, int categoria) {
			JdbcTemplate jdbc = new JdbcTemplate(dataSource);
			List<ArticleRss> lista;
			
			String sql = 
					"select article_rss.pub_date, article_rss.cover, article_rss.title, article_rss.description, article_rss.link, section.name "
					+"from article_rss "
					+"inner join rss on article_rss.id_rss = rss.id "
					+"inner join section on rss.section_id = section.id "
					+"where rss.periodico = ? "
					+"and section.id = ?;";
			
			lista = jdbc.query(sql, new Object[]{periodico, categoria}, new RowMapperListadoIndex());
			return lista;
		}
		
		//Listar por periodico , categoria y pubdate
			public List<ArticleRss> listar(String periodico, int categoria, Date pubDate) {
				JdbcTemplate jdbc = new JdbcTemplate(dataSource);
				List<ArticleRss> lista;
				
				String sql = 
						"select article_rss.pub_date, article_rss.cover, article_rss.title, article_rss.description, article_rss.link, section.name "
						+"from article_rss "
						+"inner join rss on article_rss.id_rss = rss.id "
						+"inner join section on rss.section_id = section.id "
						+"where rss.periodico = ? "
						+"and section.id = ? "
						+"and article_rss.pub_date = ?;";
				
				lista = jdbc.query(sql, new Object[]{periodico, categoria}, new RowMapperListadoIndex());
				return lista;
			}

		
		
}
