package dao;

import java.util.List;

import modelos.Rss;

public interface DAORss {
	/**
	 * Crear Rss
	 * 
	 * Se crea una nueva RSS en la base de datos
	 * con los datos que contiene un objeto de tipo Rss
	 * 
	 * @param id	Objeto Rss con los datos a introducir 
	 * 
	 * @return		true si la inserción es exitosa
	 * 				false si no
	 */
	public boolean create(Rss r);
	
	// --------------------------------------------------------
	
	/**
	 * Listar Rss
	 * 
	 * Obtener los datos de todas las Rss almacenadas
	 * en la base de datos
	 *  
	 * @return		Lista de Objetos Rss con los datos 
	 * 				almacenados en la base de datos
	 */
	public List<Rss> listar();
	
}//Fin de class DAORss
