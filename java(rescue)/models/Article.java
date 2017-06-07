package models;

import java.util.Date;

/**
 * @author Dopetrope
 */
public class Article {
	
	/*
	 * ---------------------------------------------------------------------
	 * Atributos
	 * ---------------------------------------------------------------------
	 */
	private String guid;
	private String link;
	private String title;
	private String content;
	private Date pubDate;
	private Date modDate;
	private String description;
	private String keywords;
	private int userId;
	private int channelId;
	private int sectionId;
	
	/*
	 * ---------------------------------------------------------------------
	 * Constructores
	 * ---------------------------------------------------------------------
	 */
	
	/**
	 * Constructor vac�o
	 */
	public Article (){ 	}
	
	
	 // ---------------------------------------------------------------------
	
	/**
	 * Constructor con par�metros
	 * 
	 * @param guid
	 * @param link
	 * @param title
	 * @param content
	 * @param pubDate
 	 * @param modDate
	 * @param description
	 * @param keywords
	 * @param userId
	 * @param channelId
	 * @param sectionId
	 */
	public Article(String guid, String link, String title, String content, Date pubDate, Date modDate, String description,
			String keywords, int userId, int channelId, int sectionId) {
		super();
		this.guid = guid;
		this.link = link;
		this.title = title;
		this.content = content;
		this.pubDate = pubDate;
		this.modDate = modDate;
		this.description = description;
		this.keywords = keywords;
		this.userId = userId;
		this.channelId = channelId;
		this.sectionId = sectionId;
	}
	
	/*
	 * ---------------------------------------------------------------------
	 * Getters & Setters
	 * ---------------------------------------------------------------------
	 */

	//Guid
	public String getGuid() {
		return guid;
	}
	
	public void setGuid(String guid) {
		this.guid = guid;
	}
	
	// ---------------------------------------------------------------------
	
	//Link
	public String getLink() {
		return link;
	}
	
	public void setLink(String link) {
		this.link = link;
	}
	
	// ---------------------------------------------------------------------
	
	//Titulo
	public String getTitle() {
		return title;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	// ---------------------------------------------------------------------
	
	//Contenido
	public String getContent() {
		return content;
	}
	
	public void setContent(String content) {
		this.content = content;
	}
	
	// ---------------------------------------------------------------------
		
	//Fecha de publicaci�n
	public Date getPubDate() {
		return pubDate;
	}
	
	public void setPubDate(Date modDate) {
		this.modDate = modDate;
	}

	// ---------------------------------------------------------------------
	
	//Fecha de publicaci�n
	public Date getModDate() {
		return modDate;
	}
	
	public void setModDate(Date modDate) {
		this.modDate = modDate;
	}
	
	// ---------------------------------------------------------------------
		
	//Descripci�n
	public String getDescription() {
		return description;
	}
	
	public void setDescription(String description) {
		this.description = description;
	}
	
	// ---------------------------------------------------------------------
		
	//Palabras Clave
	public String getKeywords() {
		return keywords;
	}
	
	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}
	
	// ---------------------------------------------------------------------
		

	//HAY QUE CAMBIAR COSAS A PARTIR DE AQUI (no dejar identificadores si no objetos )
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}	
	public int getChannelId() {
		return channelId;
	}
	public void setChannelId(int channelId) {
		this.channelId = channelId;
	}
	public int getSectionId() {
		return sectionId;
	}
	public void setSectionId(int sectionId) {
		this.sectionId = sectionId;
	}
	
}//Fin Class Article
