package modelos;

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

	//Constructores
	//Constructor Vacio
	public Channel (){
		
	}
	//Constructores con parámetros
	public Channel(int channelId, String link, String title, Date lastBuildDate, 
			String language, String description,String copyright, String titleImage, 
			String urlImage, String linkImage) {
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
	}
	//
	//Metodos
	//Getters y setters
	public int getChannelId() {
		return channelId;
	}
	public void setChannelId(int channelId) {
		this.channelId = channelId;
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
	public Date getLastBuildDate() {
		return lastBuildDate;
	}
	public void setLastBuildDate(Date lastBuildDate) {
		this.lastBuildDate = lastBuildDate;
	}
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getCopyright() {
		return copyright;
	}
	public void setCopyright(String copyright) {
		this.copyright = copyright;
	}
	public String getTitleImage() {
		return titleImage;
	}
	public void setTitleImage(String titleImage) {
		this.titleImage = titleImage;
	}
	public String getUrlImage() {
		return urlImage;
	}
	public void setUrlImage(String urlImage) {
		this.urlImage = urlImage;
	}
	public String getLinkImage() {
		return linkImage;
	}
	public void setLinkImage(String linkImage) {
		this.linkImage = linkImage;
	}
}