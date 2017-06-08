package rowmappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import modelos.Section;

public class RowMapperSection implements RowMapper<Section>{
	public Section mapRow (ResultSet rs, int rowNum) throws SQLException{
		Section section = new Section(
				rs.getInt("id"),
				rs.getString("name"),
				rs.getString("description"));
		return section;
	}
}