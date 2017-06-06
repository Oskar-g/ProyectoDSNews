package functions;

import java.net.URL;
import java.util.Date;
import java.util.List;

import com.rometools.rome.feed.synd.SyndEntry;
import com.rometools.rome.feed.synd.SyndFeed;
import com.rometools.rome.io.SyndFeedInput;
import com.rometools.rome.io.XmlReader;

import modelos.*;
import dao.*;
public class Functions 
{
	 public static void getRss() 
	 {
	        boolean ok = false;
	        
	        DAORssImpl daoRss = new DAORssImpl();
			List<Rss> lista = daoRss.listar();
			
			for (Rss rss : lista) {
			
				try {
	                URL feedUrl = new URL(rss.getLink());
	                int rssId = rss.getId();

	                SyndFeedInput input = new SyndFeedInput();
	                SyndFeed feed = input.build(new XmlReader(feedUrl));

	                for (SyndEntry entrada: feed.getEntries()) 
	                {
						
	                	String link = entrada.getLink();
	                	String title = entrada.getTitle();
	                	String description = entrada.getTitle();
	                	Date pubDate= entrada.getPublishedDate();
	                	                	
	                	ArticleRss arss = new ArticleRss(link,title,description,pubDate,rssId);
	                	new DAOArticleRssImpl().create(arss);	
					}
	                
	                ok = true;
	            }
	            catch (Exception ex) {
	                ex.printStackTrace();
	                System.out.println("ERROR: "+ex.getMessage());
	            }
			}
		}   
}
