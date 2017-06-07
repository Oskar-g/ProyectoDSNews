package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import modelos.Rss;

public class DAORssImpl implements DAORss{
	//Mapeo de la base de datos
		class RowMapperRss implements RowMapper<Rss>{
			public Rss mapRow(ResultSet rs, int numRow) throws SQLException{
				Rss r = new Rss(
					rs.getInt("id"),
					rs.getString("link"),
					rs.getInt("section_id")
					);
				return r;
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
	//Listar
	public List<Rss> listar() {
		JdbcTemplate jdbc = new JdbcTemplate(dataSource);
		List<Rss> lista;
		String sql = "select id,link,section_id from rss order by section_id";
		
		lista = jdbc.query(sql, new Object[]{},new RowMapperRss());
		
		return lista;
	}
	//Crear
	public boolean create(Rss r) {
		JdbcTemplate jdbc = new JdbcTemplate(dataSource);
		boolean result = false;
		
		String sql = "insert into rss(link,section_id) values (?,?)";
		
		try{
			jdbc.update(sql, new Object[]{r.getLink(),r.getSectionId()});
			result = true;
		}catch(DataAccessException dae){
			dae.printStackTrace();
		}
		return result;
	}

}
