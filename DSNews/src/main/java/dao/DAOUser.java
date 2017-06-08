package dao;

import modelos.User;

public interface DAOUser {
	
	/**
	 * Hacer login de usuario
	 * 
	 * Se pasa un objeto de tipo User y se comprueba si el name de 
	 * dicho objeto y la password pasasa como segundo parámetro
	 * coinciden con algún registro en la BBDD
	 * 
	 * @param		Objeto usuario con el name a comprobar
	 * @param		password del usuario, (en la query se encriptará)
	 * 
	 * @return 		True si existe coincidencia, false si no
	 */
	public boolean login (User u, String pass);
	
	
	/**
	 * Obtener datos de usuario por su nombre
	 * 
	 * Se pasa una cadena de caracteres y se comprueba si coincide
	 * con el name de algún registro en la BBDD
	 * 
	 * @param		name de usuario a buscar
	 * 
	 * @return 		Objeto con los datos del usuario si se encuentra, 
	 * 				o null si no hay coincidencia.
	 */
	public User getUser(String name);
	
}//Fin de DAOUser
