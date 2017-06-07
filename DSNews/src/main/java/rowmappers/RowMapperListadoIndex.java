package rowmappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import modelos.ArticleRss;
import modelos.Rss;

public class RowMapperListadoIndex implements RowMapper<ArticleRss>{
	public ArticleRss mapRow(ResultSet rs, int numRow) throws SQLException{
		
		//Acortar String para mostrar reducido en los items
		String description = functions.Functions.AcortarString(rs.getString("description"),100);
		
		ArticleRss ArtRss = new ArticleRss(
			rs.getString("link"),
			rs.getString("title"),
			description,
			rs.getDate("pub_date"),
			rs.getString("cover")
			);
		return ArtRss;
	}	
}