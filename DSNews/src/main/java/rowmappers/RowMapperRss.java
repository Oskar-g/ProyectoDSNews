package rowmappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import modelos.Rss;

public class RowMapperRss implements RowMapper<Rss>{
	public Rss mapRow(ResultSet rs, int numRow) throws SQLException{
		Rss r = new Rss(
			rs.getInt("id"),
			rs.getString("link"),
			rs.getInt("section_id"),
			rs.getInt("newspaper_id")
			);
		return r;
	}	
}