package rowmappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import modelos.User;

public class RowMapperUser implements RowMapper<User>{
	public User mapRow (ResultSet rs, int rowNum) throws SQLException{
		User user = new User (
				rs.getInt("id"),
				rs.getString("name"),
				rs.getString("role"));
		return user;
	}
}