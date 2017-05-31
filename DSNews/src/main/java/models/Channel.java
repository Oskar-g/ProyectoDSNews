package models;

import java.util.Date;

public class Channel {
	//Datos o propiedades
	private int channelId;
	private String link;
	private String title;
	private Date lastBuildDate;
	private String language;
	private String description;
	private String copyright;
	private String titleImage;
	private String urlImage;
	private String linkImage;
	private String widthImage;
	private String heightImage;

	//Constructores
	//Constructor Vacio
	public Channel (){
		
	}
	//Constructores con par�metros
	public Channel(int channelId, String link, String title, Date lastBuildDate, 
			String language, String description,String copyright, String titleImage, 
			String urlImage, String linkImage, String widthImage,String heightImage) {
		super();
		this.channelId = channelId;
		this.link = link;
		this.title = title;
		this.lastBuildDate = lastBuildDate;
		this.language = language;
		this.description = description;
		this.copyright = copyright;
		this.titleImage = titleImage;
		this.urlImage = urlImage;
		this.linkImage = linkImage;
		this.widthImage = widthImage;
		this.heightImage = heightImage;
	}
	/*
	 * ---------------------------------------------------------------------
	 * Getters & Setters
	 * ---------------------------------------------------------------------
	 */
	
	//Id de canal
	public int getChannelId() {
		return channelId;
	}
	
	public void setChannelId(int channelId) {
		this.channelId = channelId;
	}
	
	// ---------------------------------------------------------------------
	
	//Enlace del canal
	public String getLink() {
		return link;
	}
	
	public void setLink(String link) {
		this.link = link;
	}
	
	// ---------------------------------------------------------------------
	
	//Titulo del canal
	public String getTitle() {
		return title;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	// ---------------------------------------------------------------------
	
	//�ltima generaci�n 
	public Date getLastBuildDate() {
		return lastBuildDate;
	}
	
	public void setLastBuildDate(Date lastBuildDate) {
		this.lastBuildDate = lastBuildDate;
	}
	
	// ---------------------------------------------------------------------
	
	//Idioma del canal
	public String getLanguage() {
		return language;
	}
	
	public void setLanguage(String language) {
		this.language = language;
	}
	
	// ---------------------------------------------------------------------
	
	//Descripcion del canal
	public String getDescription() {
		return description;
	}
	
	public void setDescription(String description) {
		this.description = description;
	}
	
	// ---------------------------------------------------------------------
	
	//Copiright
	public String getCopyright() {
		return copyright;
	}
	
	public void setCopyright(String copyright) {
		this.copyright = copyright;
	}
	
	// ---------------------------------------------------------------------
	
	//T�tulo de imagen
	public String getTitleImage() {
		return titleImage;
	}
	
	public void setTitleImage(String titleImage) {
		this.titleImage = titleImage;
	}
	
	
	// ---------------------------------------------------------------------
	
	//Url de imagen
	public String getUrlImage() {
		return urlImage;
	}
	
	public void setUrlImage(String urlImage) {
		this.urlImage = urlImage;
	}
	
	// ---------------------------------------------------------------------
	
	//Link de imagen
	public String getLinkImage() {
		return linkImage;
	}
	
	public void setLinkImage(String linkImage) {
		this.linkImage = linkImage;
	}
	
	// ---------------------------------------------------------------------
	
	//Ancho de imagen
	public String getWidthImage() {
		return widthImage;
	}
	
	public void setWidthImage(String widthImage) {
		this.widthImage = widthImage;
	}
	
	// ---------------------------------------------------------------------
	
	//Alto de imagen
	public String getHeightImage() {
		return heightImage;
	}
	
	public void setHeightImage(String heightImage) {
		this.heightImage = heightImage;
	}
}
