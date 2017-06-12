package modelos;

import java.util.Date;

public class Article {
	/*
	 * -----------------------------------------------
	 * Attributos
	 *------------------------------------------------ 
	 */
	private int guid;
	private String link;
	private String title;
	private String content;
	private Date pubDate;
	private String description;
	private String keywords;
	private int userId;
	private int channelId;
	private int sectionId;
	
	/*------------------------------------------------
	 * Objetos Relacionados
	 */
	private Channel channel;
	private Section section;
	private User user;
	
	/*
	 * ------------------------------------------------
	 * Constructores
	 *------------------------------------------------ 
	 */
	public Article (){ }

	// ------------------------------------------------

	public Article(int guid, String link, String title, String content, Date pubDate, String description,
			String keywords, int userId, int channelId, int sectionId) {
		super();
		this.guid = guid;
		this.link = link;
		this.title = title;
		this.content = content;
		this.pubDate = pubDate;
		this.description = description;
		this.keywords = keywords;
		this.userId = userId;
		this.channelId = channelId;
		this.sectionId = sectionId;
	}

	// ------------------------------------------------
	
	public Article(int guid, String title, Date pubDate, int sectionId,int userId) {
		this.guid = guid;
		this.title = title;
		this.pubDate = pubDate;
		this.sectionId = sectionId;
		this.userId = userId;
	}

	// ------------------------------------------------
	
	public Article(String link, String title, String content, Date pubDate, String description, String keywords,
			int userId, int channelId, int sectionId) {
		super();
		this.link = link;
		this.title = title;
		this.content = content;
		this.pubDate = pubDate;
		this.description = description;
		this.keywords = keywords;
		this.userId = userId;
		this.channelId = channelId;
		this.sectionId = sectionId;
	}
	
	/*
	 * ------------------------------------------------
	 * Getters & Setters
	 *------------------------------------------------ 
	 */
	public int getGuid() {
		return guid;
	}
	
	public void setGuid(int guid) {
		this.guid = guid;
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
	
	public String getContent() {
		return content;
	}
	
	public void setContent(String content) {
		this.content = content;
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
	
	public String getKeywords() {
		return keywords;
	}
	
	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}
	
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

	public Channel getChannel() {
		return channel;
	}

	public void setChannel(Channel channel) {
		this.channel = channel;
	}

	public Section getSection() {
		return section;
	}

	public void setSection(Section section) {
		this.section = section;
	}

	public User getUser() {
		return user;	
	}
	
	public void setUser(User user) {
		this.user = user;
		
	}
	
	
}