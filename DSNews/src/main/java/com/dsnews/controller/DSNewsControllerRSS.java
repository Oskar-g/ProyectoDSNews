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
	
	//Envia al jsp para a�adir un rss
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
	            
	            
	            int size = feed.getEntries().size() + daoarss.listar().size();
            	System.out.println(size);	            
            	
            	for (SyndEntry entrada: feed.getEntries()) {
	            		            	
					String cover= "";
					String link = entrada.getLink();
					String title = entrada.getTitle();
					String description = entrada.getDescription().getValue();
					Date pubDate= entrada.getPublishedDate();
					int numEntry = size--;
				
				try{
					cover = entrada.getEnclosures().get(0).getUrl();
				}catch (Exception e) {
						System.out.println("ERROR NO TIENE IMAGEN");
				}
				
				//String cover = entrada.getEnclosures().get(0).getUrl();
				//System.out.println(entrada);
				                	
				ArticleRss arss = new ArticleRss(link,title,description,pubDate,cover,rss.getId(),numEntry);
				daoarss.create(arss);	
				
				System.out.println("Art�culos RSS Actualizados!");
				}
          
          }
          catch (Exception ex) {
              ex.printStackTrace();
              System.out.println("ERROR: "+ex.getMessage());
          }
		}
		
		return new ModelAndView("index");
	}
	
	//A�ade el rss a la base de datos
	@RequestMapping("addRSS")
	public ModelAndView addRss(
		HttpSession sesion,
		HttpServletResponse rs,
		@RequestParam(value="link")String link,
		@RequestParam(value="section_id")int sectionId,
		@RequestParam(value="newspaper")String newspaper){
		
		ModelAndView mv = null;
		Rss r = new Rss();
		r.setLink(link);
		r.setSectionId(sectionId);
		
//		Para crear un rss con un periodico que aun no existe.
//		Hay que hacer el m�todo que compruebe si el periodico existe o no...
//		si no existe, crear un nuevo periodico en su tabla correspondiente
//		obtener el id de ese periodico nuevo.
//		y ahora crear el rss con el id obtenido y los valores de los request.
//		exista o no, se necesita el id del periodico para crear el rss...
//		como todo en esta vida para probar funcionalidad se puede trampear estableciendo aqui
//		un id fijo
		
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

