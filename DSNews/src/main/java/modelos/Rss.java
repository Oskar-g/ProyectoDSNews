package modelos;

public class Rss {
	/*
	 * ------------------------------------------------
	 * Attributos
	 *------------------------------------------------ 
	 */
	private int id;
	private String link;
	private int sectionId;
	private int newspaperId;
	
	/*------------------------------------------------
	 * Objetos Relacionados
	 */
	private Section section;
	private Newspaper newspaper;
	
	/*
	 *------------------------------------------------
	 * Constructores
	 *------------------------------------------------ 
	 */
	public Rss(){ }

	// ------------------------------------------------ 
	
	public Rss(int id, String link) {
		super();
		this.id = id;
		this.link = link;
	}

	// ------------------------------------------------ 
	
	public Rss(int id, String link, int sectionId, int newspaperId) {
		super();
		this.id = id;
		this.link = link;
		this.sectionId = sectionId;
		this.newspaperId = newspaperId;
	}

	// ------------------------------------------------ 
	
	public Rss(int id, String link, Section section, Newspaper newspaper) {
		super();
		this.id = id;
		this.link = link;
		this.section = section;
		this.newspaper = newspaper;
	}

	// ------------------------------------------------ 
	
	public Rss(int id, String link, int sectionId, int newspaperId, Section section, Newspaper newspaper) {
		super();
		this.id = id;
		this.link = link;
		this.sectionId = sectionId;
		this.newspaperId = newspaperId;
		this.section = section;
		this.newspaper = newspaper;
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

	public int getNewspaperId() {
		return newspaperId;
	}

	public void setNewspaperId(int newspaperId) {
		this.newspaperId = newspaperId;
	}

	public Section getSection() {
		return section;
	}

	public void setSection(Section section) {
		this.section = section;
	}

	public Newspaper getNewspaper() {
		return newspaper;
	}

	public void setNewspaper(Newspaper newspaper) {
		this.newspaper = newspaper;
	}
	
}
