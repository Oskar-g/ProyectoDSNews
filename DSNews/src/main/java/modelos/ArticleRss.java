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
	private String cover;
	private String categoria;
	
	//Constructores
	//Constructor vacio
	public ArticleRss (){	}
	
	
	
	public ArticleRss(String link, String title, String description, Date pubDate, String cover, String categoria) {
		super();
		this.link = link;
		this.title = title;
		this.description = description;
		this.pubDate = pubDate;
		this.cover = cover;
		this.categoria = categoria;
	}

	public ArticleRss(String link, String title, String description, Date pubDate, int idRss,String cover) {
		super();
		this.link = link;
		this.title = title;
		this.description = description;
		this.pubDate = pubDate;
		this.idRss = idRss;	
		this.cover = cover;	
	}

	public ArticleRss(int id, String link, String title, String description, Date pubDate, int idRss,String cover) {
		super();
		this.link = link;
		this.id = id;
		this.title = title;
		this.description = description;
		this.pubDate = pubDate;
		this.idRss = idRss;	
		this.cover = cover;	
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
		this.idRss = idRss;
	}

	public String getCover() {
		return cover;
	}

	public void setCover(String cover) {
		this.cover = cover;
	}

	public String getCategoria() {
		return categoria;
	}

	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}

	
}