package modelos;

import java.util.Date;

public class ArticleRss {
	//Datos o propiedades
	private int id;
	private String link;
	private String title;
	private String description;
	private Date pubDate;
	private int idRss;

	//Constructores
	//Constructor vacio
	public ArticleRss (){	}
	
	
	
	public ArticleRss(String link, String title, String description, Date pubDate, int idRss) {
		super();
		this.link = link;
		this.title = title;
		this.description = description;
		this.pubDate = pubDate;
		this.idRss = idRss;	
	}

	public ArticleRss(int id, String link, String title, String description, Date pubDate, int idRss) {
		super();
		this.link = link;
		this.id = id;
		this.title = title;
		this.description = description;
		this.pubDate = pubDate;
		this.idRss = idRss;	
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
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}

	public Date getPubDate() {
		return pubDate;
	}
	public void setPubDate(Date pubDate) {
		this.pubDate = pubDate;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getIdRss() {
		return idRss;
	}
	public void setIdRss(int idRss) {
		idRss = idRss;
	}

	
}