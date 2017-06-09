package com.dsnews.controller;

import java.io.IOException;
import java.io.StringWriter;
import java.net.URL;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.omg.CORBA.PUBLIC_MEMBER;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.rometools.rome.feed.synd.SyndContent;
import com.rometools.rome.feed.synd.SyndContentImpl;
import com.rometools.rome.feed.synd.SyndEntry;
import com.rometools.rome.feed.synd.SyndEntryImpl;
import com.rometools.rome.feed.synd.SyndFeed;
import com.rometools.rome.feed.synd.SyndFeedImpl;
import com.rometools.rome.io.SyndFeedInput;
import com.rometools.rome.io.SyndFeedOutput;
import com.rometools.rome.io.XmlReader;


import dao.DAOArticle;
import dao.DAOArticleRss;
import dao.DAOListadoIndex;
import dao.DAONewspaper;
import dao.DAORss;
import dao.DAOChannel;
import dao.DAOChannelImpl;
import dao.DAOSection;
import dao.DAOUser;
import modelos.Channel;
import modelos.Article;
import modelos.ArticleRss;
import modelos.Newspaper;
import modelos.Rss;
import servicios.*;


@Controller
public class DSNewsControllerRSS {
	@Autowired
	DAORss daor;
	@Autowired
	DAOUser daou;
	@Autowired
	DAOArticle daoa;
	@Autowired
	DAORss daorss;
	@Autowired
	DAOArticleRss daoarss;
	@Autowired
	DAOSection daosec;
	@Autowired
	DAOListadoIndex daoli;
	@Autowired
	DAONewspaper daon;
	@Autowired
	DAOChannel daochannel;
	
	
	//Envia al jsp para añadir un rss
	@RequestMapping("formAddRSS")
	public ModelAndView formAddRSS(){
		
		List<Rss> lista = daor.listar();
		List<Newspaper> listaPeriodicos = daon.listar();
		
		ModelAndView mv = new ModelAndView("addRSS");
		
		mv.addObject("listaPeriodicos", listaPeriodicos);		
		mv.addObject("lista", lista);		
		
		return mv;
	}
	
	@RequestMapping("downloadArticles")
	public ModelAndView updateRssArticles(){
		
      List<Rss> lista = daorss.listar();
      
		for (Rss rss : lista) {
			try {
				URL feedUrl = new URL(rss.getLink());
				int rssId = rss.getId();
              
              
	            SyndFeedInput input = new SyndFeedInput();
	            SyndFeed feed = input.build(new XmlReader(feedUrl));
	            
	            
            	
            	for (SyndEntry entrada: feed.getEntries()) {
	            		            	
					String cover= "";
					String link = entrada.getLink();
					String title = entrada.getTitle();
					String description = entrada.getDescription().getValue();
					Date pubDate= entrada.getPublishedDate();
					

				try{
					cover = entrada.getEnclosures().get(0).getUrl();
				}catch (Exception e) {
						System.out.println("ERROR NO TIENE IMAGEN");
				}
				
				//String cover = entrada.getEnclosures().get(0).getUrl();
				//System.out.println(entrada);
				                	
				ArticleRss arss = new ArticleRss(link,title,description,pubDate,cover,rss.getId(),0);
				daoarss.create(arss);	
				
				System.out.println("Artículos RSS Actualizados!");
				}
          
          }
          catch (Exception ex) {
              ex.printStackTrace();
              System.out.println("ERROR: "+ex.getMessage());
          }
		}
		
		return new ModelAndView("index");
	}
	
	//Añade el rss a la base de datos
	@RequestMapping("addRSS")
	public ModelAndView addRss(
		HttpSession sesion,
		HttpServletResponse rs,
		@RequestParam(value="link")String link,
		@RequestParam(value="section_id")int sectionId,
		@RequestParam(value="newspaper")int newspaperid){
	
		ModelAndView mv = null;
		Rss r = new Rss();
		r.setLink(link);
		r.setSectionId(sectionId);
		r.setNewspaperId(newspaperid);
		
		boolean crear = daor.create(r);
		
		if(crear){
			System.out.println("Creado el rss");
			try {
				rs.sendRedirect("paginaAdmin");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
			mv = new ModelAndView("errorDatos");
			
			return mv;
	}
		
		
	//Añade el rss a la base de datos
	@RequestMapping(path="Rss_feed",produces="text/xml")
	@ResponseBody
	public String CreateRss(
		@RequestParam(value="sid")int sectionId,
		@RequestParam(value="section")String sectionName){
		
		
		
		String salida="";
		
		 try {
		      String feedType = "rss_2.0";
		      String fileName = "feed.xml";

		      SyndFeed feed = new SyndFeedImpl();
		      feed.setFeedType(feedType);
		      
		      Channel channel = daochannel.read();
		      
		      feed.setTitle(channel.getTitle());
		      feed.setLink(channel.getLink());
		      feed.setDescription(channel.getDescription());
		      feed.setLanguage(channel.getLanguage());
		      feed.setPublishedDate(channel.getLastBuildDate());
		      feed.setCopyright(channel.getCopyright());
		      
		      List entries = new ArrayList();
		      SyndEntry entry;
		      SyndContent description;

		      List<Article> articles = daoa.listarRss(sectionId);
		      
		      for (Article article : articles) {
		    	  
		    	  entry = new SyndEntryImpl();
			      entry.setTitle(article.getTitle());
			      entry.setLink(article.getLink());
			      entry.setPublishedDate(article.getPubDate());
			      description = new SyndContentImpl();
			      description.setType("text/plain");
			      description.setValue(article.getDescription());
			      entry.setDescription(description);
			      
			      entries.add(entry);
		      }
		      
		      feed.setEntries(entries);
		      

		      //Writer writer = new FileWriter(fileName);
		      StringWriter writer=new StringWriter();
		      SyndFeedOutput output = new SyndFeedOutput();
		      output.output(feed,writer);
		      //writer.close();
		      salida=writer.toString();
		      System.out.println("RSS CREADO CORRECTAMENTE!");
		    }
		    catch (Exception ex) {
		        ex.printStackTrace();
		    }
		
		return salida;
	}
	
	
}

