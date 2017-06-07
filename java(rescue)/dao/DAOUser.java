package dao;

import java.util.List;

import models.User;

public interface DAOUser {

	/*
	 * -----------------------------------------------------------------
	 * Métodos CRUD(L)
	 * -----------------------------------------------------------------
	 */
	
	/**
	 * Crear usuario (con contraseña)
	 * 
	 * @param u			
	 * @param password
	 * @return
	 */
	public boolean create(User u,String password);
	
	// -----------------------------------------------------------------
	
	/**
	 * Obtener usuario por nombre
	 * 
	 * @param username	Nombre del usuario
	 * @return			Objeto usuario
	 */
	public User readBy(String username);
	
	/**
	 * Obtener usuario por nombre y password
	 * 
	 * @param username
	 * @param password
	 * @return
	 */
	public User readBy(String username, String password);
	
	
	// -----------------------------------------------------------------
	
	/**
	 * 
	 * @param u
	 * @return
	 */
	public boolean update(User u);
	
	// -----------------------------------------------------------------
	
	/**
	 * Eliminar Usuario
	 * @param username
	 * @return
	 */
	public boolean delete(String username);
	
	// -----------------------------------------------------------------
	
	/**
	 * Listar Todos los usuarios
	 * 
	 * @return
	 */
	public List<User> listar();
	
	/*
	 * -----------------------------------------------------------------
	 * Otros Métodos 
	 * -----------------------------------------------------------------
	 */
	
	/**
	 * Actualizar Contraseña
	 * 
	 * @param username
	 * @param password
	 * @return
	 */
	public boolean updatePassword(String username, String password);
}
