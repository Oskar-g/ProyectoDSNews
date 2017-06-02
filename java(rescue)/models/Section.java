package models;

/**
 * @author Dopetrope
 */
public class Section {
	
	/*
	 * ---------------------------------------------------------------------
	 * Atributos
	 * ---------------------------------------------------------------------
	 */
	private int id;					//Identificador autoincremental del usuario
	private String name;			//Nombre de la Categoría/Sección
	private String description;		//Descripción esclaratoria

	/*
	 * ---------------------------------------------------------------------
	 * Constructores 
	 * ---------------------------------------------------------------------
	 */
	
	/**
	 * Constructor vacío
	 */
	public Section(){ }
	
	// ---------------------------------------------------------------------
	
	/**
	 * Constructor Con parámetros
	 * 
	 * @param id			identificador inequívoco
	 * @param name			Nombre de la categoría
	 * @param description	Descripción breve sobre el uso de la sección
	 */
	public Section(int id, String name, String description) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
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

	//Descripción
	public String getDescription() {
		return description;
	}
	
	public void setDescription(String description) {
		this.description = description;
	}
	
}//Fin Class Section
