package dao;

import java.util.Date;
import java.util.List;

import modelos.ArticleRss;
import modelos.ListadoIndex;

public interface DAOListadoIndex {
	public ListadoIndex create(String periodico, int categoria);
	public ListadoIndex create(String periodico, int categoria,Date pubDate);
	public List<ArticleRss> listar(String periodico, int categoria);
	public List<ArticleRss> listar(String periodico, int categoria,Date pubDate);

	
}
