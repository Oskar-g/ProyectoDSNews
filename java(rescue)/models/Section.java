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
	private String name;			//Nombre de la Categor�a/Secci�n
	private String description;		//Descripci�n esclaratoria

	/*
	 * ---------------------------------------------------------------------
	 * Constructores 
	 * ---------------------------------------------------------------------
	 */
	
	/**
	 * Constructor vac�o
	 */
	public Section(){ }
	
	// ---------------------------------------------------------------------
	
	/**
	 * Constructor Con par�metros
	 * 
	 * @param id			identificador inequ�voco
	 * @param name			Nombre de la categor�a
	 * @param description	Descripci�n breve sobre el uso de la secci�n
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

	//Descripci�n
	public String getDescription() {
		return description;
	}
	
	public void setDescription(String description) {
		this.description = description;
	}
	
}//Fin Class Section
