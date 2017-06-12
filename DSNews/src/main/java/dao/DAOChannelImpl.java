package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import modelos.Channel;

public class DAOChannelImpl implements DAOChannel {

	String mainTable = "channel";
	
	//Mapeo de la base de datos
	class RowMapperChannel implements RowMapper<Channel>{
		public Channel mapRow(ResultSet rs, int numRow) throws SQLException{
				
			Channel c = new Channel(
					rs.getInt("channel_id"),
					rs.getString("link"),
					rs.getString("title"),
					rs.getDate("last_build_date"),
					rs.getString("language"),
					rs.getString("description"),
					rs.getString("copyright"),
					rs.getString("title_image"),
					rs.getString("url_image"),
					rs.getString("link_image")					
					);
			return c;
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
	
	//Read article
	public Channel read(){
		String sql= "select * from "+mainTable;
		JdbcTemplate jdbc = new JdbcTemplate(dataSource);
		
		Channel c = jdbc.queryForObject(sql, new RowMapperChannel());
		
		return c;
	}

	public Channel read(int id){
		String sql= "select * from "+mainTable+" where channel_id = ?";
		JdbcTemplate jdbc = new JdbcTemplate(dataSource);
		
		Channel c = jdbc.queryForObject(sql, new Object[]{id},new RowMapperChannel());
		
		return c;
	}
	
}
