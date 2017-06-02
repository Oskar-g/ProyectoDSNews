package models;

/**
 * @author Dopetrope
 */
public class User {
	
	public enum Role{
		ADMIN,		//Administrador de la aplicación, puede editarlo todo
		EDITOR		//Redactor, sólo puede crear y modificar noticias
	}
	
	/*
	 * ---------------------------------------------------------------------
	 * Atributos
	 * ---------------------------------------------------------------------
	 */
	private int id;			//Identificador autoincremental del usuario
	private String name;	//Nombre del usuario (correo, nombre?)
	private Role role;		//Rol establecido para la aplicación
	
	/*
	 * ---------------------------------------------------------------------
	 * Constructores 
	 * ---------------------------------------------------------------------
	 */
	
	/**
	 * Constructor vacío
	 */
	public User(){	}
	
	// ---------------------------------------------------------------------
	
	/**
	 * Constructor Con parámetros
	 * 
	 * @param name		Nombre del usuario
	 * @param role		Rol del usuario (le da determinados privilegios)
	 */
	public User(String name, Role role){
		this.name= name;
		this.role= role;
	}
	
	/*
	 * ---------------------------------------------------------------------
	 * Getters & Setters
	 * ---------------------------------------------------------------------
	 */
	
	//Identificador
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	// ---------------------------------------------------------------------
	
	//Nombre
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	// ---------------------------------------------------------------------
	
	//Rol
	public Role getRole() {
		return role;
	}
	
	public void setRole(Role role) {
		this.role = role;
	}
	
}//Fin Class Users
