package modelos;

public class Section {
	//Datos o propiedades
	private int id;
	private String name;
	private String description;
	//Constructores
	//Constructor vacio
	public Section(){
		
	}
	//Constructor con parametros
	public Section(int id, String name, String description) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
	}
	//Metodos
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
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	
}