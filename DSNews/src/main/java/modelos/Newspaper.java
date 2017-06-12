package modelos;

public class Newspaper {
	
	/*
	 * ------------------------------------------------
	 * Attributos
	 *------------------------------------------------ 
	 */
	private int id;
	private String name;
	private String logo;

	/*
	 *------------------------------------------------
	 * Constructores
	 *------------------------------------------------ 
	 */
	public Newspaper(){	}
	
	// ------------------------------------------------ 

	public Newspaper(String name, String logo) {
		super();
		this.name = name;
		this.logo = logo;
	}

	// ------------------------------------------------ 

	public Newspaper(int id, String name, String logo) {
		super();
		this.id = id;
		this.name = name;
		this.logo = logo;
	}

	/*
	 *------------------------------------------------
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

	public String getLogo() {
		return logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}
}