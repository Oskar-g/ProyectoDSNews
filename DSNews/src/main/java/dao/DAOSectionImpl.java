package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import modelos.Section;

public class DAOSectionImpl implements DAOSection {


	//Creamos el row mapper para nuestra base de datos
	class RowMapperSection implements RowMapper<Section>{
		public Section mapRow (ResultSet rs, int rowNum) throws SQLException{
			Section section = new Section(
					rs.getInt("id"),
					rs.getString("name"),
					rs.getString("description"));
			return section;
		}
	}
	
	//CReamos el dataSource con sus getters y setters
	private DataSource dataSource;
	
	//Getters y setters
	public DataSource getDataSource() {
		return dataSource;
	}

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	
	//Metodos
	//Listar
	public List<Section> listar() {
		JdbcTemplate jdbc = new JdbcTemplate(dataSource);
		List<Section> lista;
		String sql = "select name from section order by id";
		
		lista = jdbc.query(sql,new RowMapperSection());
		return lista;
	}
	
}
