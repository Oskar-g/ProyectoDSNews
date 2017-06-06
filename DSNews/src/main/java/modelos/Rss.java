package modelos;

public class Rss {
	//Datos o propiedades
	private int id;
	private String link;
	private int sectionId;
	
	//Constructores
	//Constructor vacio
	public Rss(){
		
	}
	//Con parametros

	public Rss(String link, int sectionId) {
		super();
		this.link = link;
		this.sectionId = sectionId;
	}

	//Metodos
	//Getters y setters
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public int getSectionId() {
		return sectionId;
	}

	public void setSectionId(int sectionId) {
		this.sectionId = sectionId;
	}
	
}
