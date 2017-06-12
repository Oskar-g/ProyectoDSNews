package com.dsnews.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dao.DAOArticle;
import dao.DAOArticleRss;
import dao.DAOListadoIndex;
import dao.DAONewspaper;
import dao.DAOSection;
import modelos.Article;
import modelos.ArticleRss;
import modelos.ListadoIndex;
import modelos.Newspaper;
import modelos.Section;

@Controller
public class DSNewsControllerBasic {
	
	@Autowired
	DAOSection daosection;
	@Autowired
	DAONewspaper daonewspaper;
	@Autowired
	DAOListadoIndex daolindex;
	@Autowired
	DAOArticle daoarticle;
		
	/*
	 * ---------------------------------------------------------------------
	 * ModelAndViews
	 * ---------------------------------------------------------------------
	 */
	
	@RequestMapping(value = {"/", "index"})
	public ModelAndView index(){

		ModelAndView mv = new ModelAndView("index");
		
		List<Newspaper> newspapers = daonewspaper.listar();
		
		mv.addObject("newspapers",newspapers);
		
		return mv;
	}
	
	// ---------------------------------------------------------------------
	
	@RequestMapping(value = {"noticias"})
	public ModelAndView inicio(@RequestParam(value="periodico")int periodico){
		
		ModelAndView mv = new ModelAndView("noticias");
		
		Newspaper newspaper = daonewspaper.getNewspaper(periodico);	
		String logo = newspaper.getLogo();
		String name = newspaper.getName();
		
		List<Newspaper> newspapers = daonewspaper.listar();

		List<Section> sections = daosection.listar();
		
		//S�lo periodico y categor�a
		List<ListadoIndex> listadoCompleto = new ArrayList<ListadoIndex>();
		for (Section categoria : sections) {
			
			List<ArticleRss> listaArticulos = new ArrayList<ArticleRss>();
			listaArticulos = daolindex.listar(newspaper.getId(), categoria.getId());
			
			if (! listaArticulos.isEmpty()){
				listadoCompleto.add(new ListadoIndex(categoria.getName(), listaArticulos));			
			}
		}
		
		mv.addObject("listadoCompleto",listadoCompleto);
		mv.addObject("sectionList",sections);
		 
		mv.addObject("newspapers",newspapers);
		mv.addObject("name",name);
		mv.addObject("logo",logo);

		return mv;
	}
	
	// ---------------------------------------------------------------------
	
	@RequestMapping(value = {"buscarNoticias"})
	public ModelAndView buscarNoticias(HttpServletResponse rs,
			@RequestParam("newspapers")int periodico,
			@RequestParam("secciones")int seccion,
			@RequestParam("date")String pubDate){
		
		SimpleDateFormat formatter = new SimpleDateFormat("y-M-d");
		Date date = null;
        
		List<ListadoIndex> listadoCompleto = new ArrayList<ListadoIndex>();
		List<ArticleRss> listaArticulos = new ArrayList<ArticleRss>();

		Section section = daosection.getSection(seccion);
		
		//Si pubdate no tiene valor buscar sin este filtro...
		if(pubDate.trim().equals("")){
			listaArticulos = daolindex.listar(periodico, seccion);
		}else{
			try {
				//parseando a Date el pubdate antes de usarlo
	            date = formatter.parse(pubDate);
	        } catch (ParseException pe) {
	            pe.printStackTrace();
	        }
			
			listaArticulos = daolindex.listar(periodico, seccion,date);
		}
		
		if (! listaArticulos.isEmpty()){
			listadoCompleto.add(new ListadoIndex(section.getName(), listaArticulos));			
		}
		
		Newspaper n = daonewspaper.getNewspaper(periodico);
		String logo = n.getLogo();
		String name = n.getName();

		List<Section> sectionList = daosection.listar();
		List<Newspaper> newspapers = daonewspaper.listar();
			
		ModelAndView mv = new ModelAndView("noticias");
		mv.addObject("name",name);
		mv.addObject("logo",logo);
		mv.addObject("sectionList",sectionList);
		mv.addObject("newspapers",newspapers);	
		mv.addObject("listadoCompleto",listadoCompleto);

		return mv;

		}		
	// ---------------------------------------------------------------------
	
		@RequestMapping(value = {"noticiasDSNews"})
		public ModelAndView mostrarNoticiaDSNews(
				@RequestParam("n")String StrGuid){
			
			int guid = Integer.parseInt(StrGuid);
			
			
			Article article = daoarticle.read(guid);
			
			ModelAndView mv = new ModelAndView("noticiasDSNews");
			mv.addObject("article", article);
			
			return mv;

			}		
}