package dao;

import java.util.List;

import modelos.Section;

public interface DAOSection {
	
	/**
	 * Obtener Sección
	 * 
	 * Obtener los datos de una Section específica buscando su
	 * id por la base de datos
	 * 
	 * @param id	Id a buscar 
	 * 
	 * @return		Objeto Section con los datos del registro 
	 * 				coincidente
	 */
	Section getSection(int id);
	
	// ------------------------------------------------------------------
	
	/**
	 * Listar Secciones
	 * 
	 * Obtener los datos de todas las secciones almacenadas
	 * en la base de datos
	 *  
	 * @return		Lista de Objetos Section con los datos 
	 * 				almacenados en la base de datos
	 */
	List<Section> listar();
	
}//Fin de DAOSection
