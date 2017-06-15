package dao;


import modelos.Channel;

public interface DAOChannel {
	
	/**
	 * Hacer login de usuario
	 * 
	 * Se pasa un objeto de tipo User y se comprueba si el name de 
	 * dicho objeto y la password pasasa como segundo par�metro
	 * coinciden con alg�n registro en la BBDD
	 * 
	 * @param		Objeto usuario con el name a comprobar
	 * @param		password del usuario, (en la query se encriptar�)
	 * 
	 * @return 		True si existe coincidencia, false si no
	 */
	
	/**
	 * Obtener Channel
	 * 
	 * @return	Objeto Channel.
	 */
	public Channel read();
	
	// ------------------------------------------------------
	
	/**
	 * Obtener Channel por id
	 * 
	 * Buscar en la base de datos un channel cuyo identificador coincida 
	 * con la id pasada por par�metro
	 * 
	 * @param id	Id del Channel a buscar
	 * 
	 * @return		Objeto channel con los datos obtenidos
	 */
	public Channel read(int id);
}
