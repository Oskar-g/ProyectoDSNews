package rowmappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import modelos.Newspaper;
import modelos.Rss;

public class RowMapperRss{
	public class MapperRss implements RowMapper<Rss>{
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
	
	public class MapperRssPeriodico implements RowMapper<Rss>{
		public Rss mapRow(ResultSet rs, int numRow) throws SQLException{
			Newspaper n = new Newspaper(rs.getInt("newspaper_id"),rs.getString("name"),rs.getString("logo"));
			Rss r = new Rss();
			r.setId(rs.getInt("id"));
			r.setLink(rs.getString("link"));
			r.setSectionId(rs.getInt("section_id"));
			r.setNewspaper(n);
			return r;
		}	
	}
}