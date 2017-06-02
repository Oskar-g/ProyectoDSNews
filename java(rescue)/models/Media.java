package models;

public class Media {
	//Datos o propiedades
	private int id;
	private String url;
	private String type;
	private String title;
	private String alt;
	private String description;
	private String articleId;
	//Constructores
	//Constructor vacio
	public Media(){
		
	}
	//Constructor con parámetros
	public Media(int id, String url, String type, String title, String alt, String description, String articleId) {
		super();
		this.id = id;
		this.url = url;
		this.type = type;
		this.title = title;
		this.alt = alt;
		this.description = description;
		this.articleId = articleId;
	}
	//Metodos
	//Getters y setters
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAlt() {
		return alt;
	}
	public void setAlt(String alt) {
		this.alt = alt;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getArticleId() {
		return articleId;
	}
	public void setArticleId(String articleId) {
		this.articleId = articleId;
	}
	
}
