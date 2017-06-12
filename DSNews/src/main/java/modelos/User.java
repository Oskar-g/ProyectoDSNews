package modelos;

public class User {
	/*
	 * ------------------------------------------------
	 * Attributos
	 *------------------------------------------------ 
	 */
	private int id;
	private String name;
	private String role;
	
	/*
	 * ------------------------------------------------
	 * Contructores
	 *------------------------------------------------ 
	 */
	public User(){ }
	
	// ------------------------------------------------
	
	public User(int id,String name, String role){
		this.id = id;
		this.name= name;
		this.role= role;
		
	}

	/*
	 * ------------------------------------------------
	 * Getters & Setters
	 *------------------------------------------------ 
	 */
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
}