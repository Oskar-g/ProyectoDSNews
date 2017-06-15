package com.dsnews.controller;

import java.io.IOException;
import java.io.StringWriter;
import java.net.URL;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
import dao.DAOChannel;
import dao.DAONewspaper;
import dao.DAORss;
import dao.DAOSection;

import modelos.Channel;
import modelos.Article;
import modelos.ArticleRss;
import modelos.Newspaper;
import modelos.Rss;
import modelos.Section;
import modelos.User;


@Controller
public class DSNewsControllerRSS {

	@Autowired
	DAONewspaper daon;
	@Autowired
	DAORss daor;
	@Autowired
	DAORss daorss;
	@Autowired
	DAOArticleRss daoarss;
	@Autowired
	DAOSection daosec;
	@Autowired
	DAOChannel daochannel;
	@Autowired
	DAOArticle daoa;
	
	/**
	 * Formulario Añadir Rss
	 * 
	 * Carga el formulario para añadir nuevos rss externos
	 * 
	 * @param sesion		Objeto de sesión
	 * @param rs			Objeto de response
	 * 
	 * @return			Vista addRSS para añadir rss
	 */
	@RequestMapping("formAddRSS")
	public ModelAndView formAddRSS(HttpSession session, HttpServletResponse rs){
		
		ModelAndView mv = null;
		
		User user = (User)session.getAttribute("user");

		//Verificar que el usuario está conectado...
		if(user==null){
			
			try {
				rs.sendRedirect("formLogin");
			} catch (IOException e) {
				e.printStackTrace();
			}
			
		} else {
		
			List<Rss> lista = daor.listar();
			List<Newspaper> listaPeriodicos = daon.listar();
			
			mv = new ModelAndView("addRSS");
			
			mv.addObject("listaPeriodicos", listaPeriodicos);		
			mv.addObject("lista", lista);	
		}
		
		return mv;
	
	}//Fin de formAddRSS
	
	// ----------------------------------------------------------------------------
	
	/**
	 * Actualizar Artículos Obtenidos por RSS
	 * 
	 * Se da un repaso a cada enlace RSS añadido en la base de datos
	 * y se escriben (o sobreescriben) los articulos que haya disponibles
	 * en dicho enlace
	 * 
	 * @return		Vista del index
	 */
	@RequestMapping("downloadArticles")
	public ModelAndView updateRssArticles(){
		
      List<Rss> lista = daorss.listar();
      int siguienteOrden=daoarss.getSiguienteOrden();
		for (Rss rss : lista) {
			try {
				URL feedUrl = new URL(rss.getLink());           
              
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
		daoarss.updateOrdenRezagados(siguienteOrden);
		return new ModelAndView("index");
		
	}//Fin de downloadArticles
	
	// --------------------------------------------------------------------------------------
	
	/**
	 * Añadir Rss externo
	 * 
	 * @param sesion		Objeto de sesión
	 * @param rs			Objeto de response
	 * @param link			Enlace del Rss externo
	 * @param sectionId		Sección a la que pertenece dicho rss
	 * @param newspaperid	Periodico al que pertenece el rss
	 * 
	 * @return				Vista de error de datos si la creación es incorrecta
	 */
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
				rs.sendRedirect("formAddRSS");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
			mv = new ModelAndView("errorDatos");
			
		return mv;
			
	}//Fin de addRSS
	
	// ----------------------------------------------------------------------
	
	/**
	 * Listar nuestros Rss
	 * 
	 * Se repasan todas y cada una de las categorías de la base de datos
	 * para generar en laces que de acceso a los rss de dicha categoría
	 * 
	 * @return		Vista de generarRss con el listado de rss propios
	 */
	@RequestMapping(value = {"generarRSS"})
	public ModelAndView generarRss(){

		List<Section> listaSec = daosec.listar();
		
		ModelAndView mv = new ModelAndView("generarRss");
		mv.addObject("listaSec",listaSec);
		
		return mv;
	}	
	
	// ----------------------------------------------------------------------
	
	/**
	 * Generar XML de un feed.
	 * 
	 * A partir de los datos pasados como parámetro, se filtran los resultados
	 * para generar un 
	 * @param StrsectionId
	 * @param sectionName
	 * @return
	 */
	@RequestMapping(path="Rss_feed",produces="text/xml")
	@ResponseBody
	public String CreateRss(
		@RequestParam(value="sid")String StrsectionId,
		@RequestParam(value="sname")String sectionName){
		
		int sectionId = Integer.parseInt(StrsectionId);
		
		String salida="";
		
		 try {
		      String feedType = "rss_2.0";

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
		    	  entry.setUri(article.getLink());
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

		      StringWriter writer=new StringWriter();
		      SyndFeedOutput output = new SyndFeedOutput();
		      output.output(feed,writer);

		      salida=writer.toString();
		      System.out.println("RSS CREADO CORRECTAMENTE!");
		    }
		    catch (Exception ex) {
		        ex.printStackTrace();
		    }

		return salida;
		
	}//Fin de Rss_feed
	
}//Fin de DSNewsControllerRss