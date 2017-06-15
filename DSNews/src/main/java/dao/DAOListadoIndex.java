package dao;

import java.util.Date;
import java.util.List;

import modelos.ArticleRss;

public interface DAOListadoIndex {
	
	/**
	 * Listar ArticleRss por categoria y periodico
	 * 
	 * Obtiene los item de articulos descargados por RSS
	 * de la base de datos filtrados por section y periodico
	 * 
	 * @param periodico		discriminar noticias que no pertenezcan a
	 * 						este periodico
	 * @param section		discriminar noticias que no sean de
	 * 						esta sección
	 * 
	 * @return				lista de articulosRss que pasen los filtros
	 */	
	public List<ArticleRss> listar(int periodico, int section);
	
	// -------------------------------------------------------------
	
	/**
	 * Listar ArticleRss por categoria, periodico y fecha de publicación
	 * 
	 * Obtiene los item de articulos descargados por RSS
	 * de la base de datos filtrados por lo anteriormente nombrado
	 * 
	 * @param periodico		discriminar noticias que no pertenezcan a
	 * 						este periodico
	 * @param section		discriminar noticias que no sean de
	 * 						esta sección
	 * @param section		discriminar noticias que no sean de
	 * 						esta fecha
	 * 
	 * @return				lista de articulosRss que pasen los filtros
	 */	
	public List<ArticleRss> listar(int periodico, int section,Date pubDate);

	
}
