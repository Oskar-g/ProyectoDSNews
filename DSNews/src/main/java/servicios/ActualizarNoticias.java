package servicios;

import java.net.URL;
import java.util.Date;
import java.util.List;

import javax.sql.DataSource;

import com.rometools.rome.feed.synd.SyndEntry;
import com.rometools.rome.feed.synd.SyndFeed;
import com.rometools.rome.io.SyndFeedInput;
import com.rometools.rome.io.XmlReader;

import modelos.ArticleRss;
import modelos.Rss;

import dao.*;

public class ActualizarNoticias extends Thread{

	private boolean continuar=true;
	private DataSource dataSource;
	
	public DataSource getDataSource() {
		return dataSource;
	}

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	DAORssImpl daorss = new DAORssImpl();
	DAOArticleRssImpl daoarss = new DAOArticleRssImpl();
	
	//Getters y setters
	public DAORssImpl getDaorss() {
		return daorss;
	}

	public void setDaorss(DAORssImpl daorss) {
		this.daorss = daorss;
	}

	public DAOArticleRssImpl getDaoarss() {
		return daoarss;
	}

	public void setDaoarss(DAOArticleRssImpl daoarss) {
		this.daoarss = daoarss;
	}
	
	
	//Metodos
	public void run(){
		while(continuar){
			try{
				sleep(600000);
				//System.out.println("Hola");
				 List<Rss> lista = daorss.listar();
			      
					for (Rss rss : lista) {
						try {
							URL feedUrl = new URL(rss.getLink());
							int rssId = rss.getId();
			              
			              
				            SyndFeedInput input = new SyndFeedInput();
				            SyndFeed feed = input.build(new XmlReader(feedUrl));
				            
				            
			            	
			            	for (SyndEntry entrada: feed.getEntries()) {
				            		            	
								String cover = "";
								String link = "";
								String title = "";
								String description = "";
								Date pubDate = null;
								

							try{
								cover= "";
								link = entrada.getLink();
								title = entrada.getTitle();
								description = entrada.getDescription().getValue();
								pubDate= entrada.getPublishedDate();
								
								cover = entrada.getEnclosures().get(0).getUrl();
							}catch (Exception e) {
								
							}
							
							//String cover = entrada.getEnclosures().get(0).getUrl();
							//System.out.println(entrada);
							                	
							ArticleRss arss = new ArticleRss(link,title,description,pubDate,cover,rss.getId(),0);
							daoarss.create(arss);	
							
							}
			          
			          }
			          catch (Exception ex) {
			              ex.printStackTrace();
			              System.out.println("ERROR: "+ex.getMessage());
			          }
					}
			}
			catch(InterruptedException ie){
				ie.printStackTrace();
			}
		}
	}
	
	public void terminar(){
		continuar=false;
	}
}
