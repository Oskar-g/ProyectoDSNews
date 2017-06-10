package modelos;

import java.util.Date;

public class ArticleRss {
	/*
	 * -----------------------------------------------
	 * Attributos
	 *------------------------------------------------ 
	 */
	private String link;
	private String title;
	private String description;
	private Date pubDate;
	private String cover;
	private int rssId;
	private int numEntry;
	
	/*------------------------------------------------
	 * Objetos Relacionados
	 */
	private Rss rss ;

	/*
	 * ------------------------------------------------
	 * Constructores
	 *------------------------------------------------ 
	 */
	public ArticleRss (){	}
	
	// ------------------------------------------------
	
	public ArticleRss(String link, String title, String description, Date pubDate, String cover) {
		super();
		this.link = link;
		this.title = title;
		this.description = description;
		this.pubDate = pubDate;
		this.cover = cover;
	}
	
	// ------------------------------------------------
	
	public ArticleRss(String link, String title, String description, Date pubDate, String cover, int rssId,int numEntry) {
		super();
		this.link = link;
		this.title = title;
		this.description = description;
		this.pubDate = pubDate;
		this.cover = cover;
		this.rssId = rssId;
		this.numEntry= numEntry;
	}
	
	// ------------------------------------------------

	public ArticleRss(String link, String title, String description, Date pubDate, String cover, Rss rss) {
		super();
		this.link = link;
		this.title = title;
		this.description = description;
		this.pubDate = pubDate;
		this.cover = cover;
		this.rss = rss;
	}

	/*
	 * ------------------------------------------------
	 * Getters & Setters
	 *------------------------------------------------ 
	 */
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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Date getPubDate() {
		return pubDate;
	}

	public void setPubDate(Date pubDate) {
		this.pubDate = pubDate;
	}

	public String getCover() {
		return cover;
	}

	public void setCover(String cover) {
		this.cover = cover;
	}

	public int getRssId() {
		return rssId;
	}

	public void setRssId(int rssId) {
		this.rssId = rssId;
	}

	public Rss getRss() {
		return rss;
	}

	public void setRss(Rss rss) {
		this.rss = rss;
	}
	public int getNumEntry(){
		return numEntry;
	}
	public void setNumEntry(int numEntry){
		this.numEntry= numEntry;
	}


}