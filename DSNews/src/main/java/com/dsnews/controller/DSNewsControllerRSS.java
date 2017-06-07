package com.dsnews.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dao.DAORss;
import modelos.Rss;


@Controller
public class DSNewsControllerRSS {
	@Autowired
	DAORss daor;
	
	//Envia al jsp para añadir un rss
	@RequestMapping("formAddRSS")
	public ModelAndView formAddRSS(){
		
		List<Rss> lista = daor.listar();
		ModelAndView mv = new ModelAndView("addRSS");
		mv.addObject("lista", lista);		
		
		return mv;
	}
	
	//Añade el rss a la base de datos
	@RequestMapping("addRSS")
	public ModelAndView addRss(HttpSession sesion,HttpServletResponse rs,
			@RequestParam(value="link")String link,
			@RequestParam(value="section_id")int sectionId){
		
		ModelAndView mv = null;
		Rss r = new Rss(link,sectionId);
		boolean crear = daor.create(r);
		
		if(crear){
			System.out.println("Creado el rss");
			try {
				rs.sendRedirect("paginaAdmin");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}else{
			mv = new ModelAndView("errorDatos");
		}
		return mv;
	}
	//Leemos los rss que tengamos cargados en la base de datos
//	import java.net.URL;
//	import java.io.InputStreamReader;
//	import com.rometools.rome.feed.synd.SyndFeed;
//	import com.rometools.rome.io.SyndFeedInput;
//	import com.rometools.rome.io.XmlReader;
//	import com.rometools.rome.feed.synd.SyndContent;
//	import com.rometools.rome.feed.synd.SyndEntry;;
//
//	/**
//	 * It Reads and prints any RSS/Atom feed type.
//	 * <p>
//	 * @author Alejandro Abdelnur
//	 *
//	 */
//	public class Principal {
//
//	    public static void main(String[] args) {
//	        boolean ok = false;
//	        
//	        
//	        for(String url : l){
//	        	try {
//	                URL feedUrl = new URL(l);
//
//	                SyndFeedInput input = new SyndFeedInput();
//	                SyndFeed feed = input.build(new XmlReader(feedUrl));
//
//	                for(SyndEntry e : feed.getEntries()){
//	                	SyndContent descr = e.getDescription();
//	                	String descripcion = descr.getValue();
//	                }
//
//	                ok = true;
//	            }
//	            catch (Exception ex) {
//	                ex.printStackTrace();
//	                System.out.println("ERROR: "+ex.getMessage());
//	            }
//	        	
//	        }
//	            
//	       
//
//	        if (!ok) {
//	            System.out.println();
//	            System.out.println("FeedReader reads and prints any RSS/Atom feed type.");
//	            System.out.println("The first parameter must be the URL of the feed to read.");
//	            System.out.println();
//	        }
//	    }
//
//	}	
}

