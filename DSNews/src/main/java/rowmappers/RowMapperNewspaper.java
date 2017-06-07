package rowmappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import modelos.Newspaper;

public class RowMapperNewspaper implements RowMapper<Newspaper>{
	public Newspaper mapRow (ResultSet rs, int rowNum) throws SQLException{
		Newspaper newspaper = new Newspaper (
				rs.getInt("id"),
				rs.getString("name"),
				rs.getString("logo"));
		return newspaper;
	}
}