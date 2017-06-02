package modelos;

public class User {
	//Datos o propiedades
	private int id;
	private String name;
	private String role;
	
	//Constructores 
	//Constructor vacio
	public User(){
		
	}
	
	//Constructores con parametros
	public User(int id,String name, String role){
		this.id = id;
		this.name= name;
		this.role= role;
		
	}
	public User(String name) {
		this.name=name;
	}

	//Getters y setters
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