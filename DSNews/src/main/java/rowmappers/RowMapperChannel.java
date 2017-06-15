package rowmappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import modelos.Channel;

public class RowMapperChannel implements RowMapper<Channel>{
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