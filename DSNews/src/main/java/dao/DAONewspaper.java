package dao;

import java.util.List;

import modelos.Newspaper;

public interface DAONewspaper {
	
	/**
	 * Obtener Periodico
	 * 
	 * Obtener los datos de un Periodico específico buscando su
	 * id por la base de datos
	 * 
	 * @param id	Id a buscar 
	 * 
	 * @return		Objeto Periodico con los datos del registro 
	 * 				coincidente
	 */
	Newspaper getNewspaper(int id);
	
	// ------------------------------------------------------------------
	
	/**
	 * Listar Periodicos
	 * 
	 * Obtener los datos de todas los periodicos almacenados
	 * en la base de datos
	 *  
	 * @return		Lista de Objetos Periodico con los datos 
	 * 				almacenados en la base de datos
	 */
	List<Newspaper> listar();
	
}//Fin de DAONewspaper
