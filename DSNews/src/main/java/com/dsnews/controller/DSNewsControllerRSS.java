package com.dsnews.controller;

import java.io.IOException;
import java.net.URL;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.rometools.rome.feed.synd.SyndEntry;
import com.rometools.rome.feed.synd.SyndFeed;
import com.rometools.rome.io.SyndFeedInput;
import com.rometools.rome.io.XmlReader;


import dao.DAOArticle;
import dao.DAOArticleRss;
import dao.DAOListadoIndex;
import dao.DAONewspaperImpl;
import dao.DAORss;
import dao.DAOSection;
import dao.DAOUser;
import modelos.ArticleRss;
import modelos.Newspaper;
import modelos.Rss;


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
	DAONewspaperImpl daon;
	
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
	
}

