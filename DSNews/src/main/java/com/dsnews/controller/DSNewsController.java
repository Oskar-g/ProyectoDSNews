package com.dsnews.controller;

import java.io.IOException;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import dao.DAOArticle;
import dao.DAOArticleRss;
import dao.DAOArticleRssImpl;
import dao.DAOListadoIndex;
import dao.DAONewspaper;
import dao.DAONewspaperImpl;
import dao.DAORss;
import dao.DAORssImpl;
import dao.DAOSection;
import dao.DAOUser;
import modelos.Article;
import modelos.ArticleRss;
import modelos.ListadoIndex;
import modelos.Newspaper;
import modelos.Rss;
import modelos.Section;
import modelos.User;

@Controller
public class DSNewsController {
	@Autowired
	DAOUser daouser;
	@Autowired
	DAOArticle daoarticle;
	@Autowired
	DAORss daorss;
	@Autowired
	DAOArticleRss daoarticlerss;
	@Autowired
	DAOSection daosection;
	@Autowired
	DAONewspaper daonewspaper;
	@Autowired
	DAOListadoIndex daolindex;
	
	@RequestMapping(value = {"/", "index"})
	public ModelAndView index(){

		ModelAndView mv = new ModelAndView("index");
		
		return mv;
	}
	
	@RequestMapping(value = {"noticias"})
	//public ModelAndView inicio(@RequestParam(value="periodico")String newspaper){
	public ModelAndView noticias(){
		
		
		//Test debug, (s�lo para probar esto ir�a con una request del selector del index)
		daonewspaper.getNewspaper(1);
		Newspaper newspaper = daonewspaper.getNewspaper(1);		
				
		List<Section> sectionList = daosection.listar();
		List<Newspaper> newspapers = daonewspaper.listar();
		
		//S�lo periodico y categor�a
		List<ListadoIndex> listadoCompleto = new ArrayList<ListadoIndex>();
		for (Section categoria : sectionList) {
			
			List<ArticleRss> listaArticulos = new ArrayList<ArticleRss>();
			listaArticulos = daolindex.listar(newspaper.getId(), categoria.getId());
			
			if (! listaArticulos.isEmpty()){
				listadoCompleto.add(new ListadoIndex(categoria.getName(), listaArticulos));			
			}
		}
		
		ModelAndView mv = new ModelAndView("noticias");
		mv.addObject("listadoCompleto",listadoCompleto);
		mv.addObject("sectionList",sectionList);
		mv.addObject("newspapers",newspapers);

		return mv;
	}
	
	@RequestMapping(value = {"formLogin"})
	public ModelAndView formlogin(){
		
		ModelAndView mv = new ModelAndView("formLogin");
		
		return mv;
	}
	
	@RequestMapping(value = {"login"})
	public ModelAndView login(HttpSession sesion,
			@RequestParam(value="name")String name,
			@RequestParam(value="password")String password){
				ModelAndView mv = null;
				User u = new User();
				u.setName(name);
				
				boolean ok = daouser.login(u, password);
				if(ok){
					User us = daouser.getUser(name);
					sesion.setAttribute("user", us);
					mv = new ModelAndView("loginTrue");
				}else{
					sesion.setAttribute("user",null);
					mv = new ModelAndView("loginFalse");
				}
				return mv;
			}
	
	@RequestMapping(value = {"paginaAdmin"})
	public ModelAndView paginaAdmin(HttpSession sesion, HttpServletResponse rs){
		ModelAndView mv = null;
		
		User user = (User)sesion.getAttribute("user");
		if(user==null){
			try {
				rs.sendRedirect("formLogin");
			} catch (IOException e) {
				e.printStackTrace();
			}
		} else {
			
			if(user.getRole().equals("admin")){
				List<Article> lista = daoarticle.listar(user);
				mv = new ModelAndView("paginaAdmin");
				mv.addObject("lista", lista);
			}else if (user.getRole().equals("dios")){
				List<Article> lista = daoarticle.listarSuperUser();
				mv = new ModelAndView("paginaAdmin");
				mv.addObject("lista", lista);
			}
		}
	

		return mv;
	}
	
	@RequestMapping(value = {"formCrear"})
	public ModelAndView formCrear(HttpSession sesion, HttpServletResponse rs){
		ModelAndView mv = null;
		User user = (User)sesion.getAttribute("user");
		if(user==null){
			try {
				rs.sendRedirect("formLogin");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		else {
			mv = new ModelAndView("formCrear");
		}
		return mv;
	}
	
	@RequestMapping(value = {"crear"})
	public ModelAndView crear(HttpSession sesion,HttpServletResponse rs,
			@RequestParam("link")String link,
			@RequestParam("title")String title,
			@RequestParam("content")String content,
			@RequestParam("pubDate")String pubDateStr,
			@RequestParam("description")String description,
			@RequestParam("channelid")String channelidStr,
			@RequestParam("sectionid")String sectionidStr,
			@RequestParam("keywords")String keywords){
		
		ModelAndView mv = null;
		User us = (User)sesion.getAttribute("user");
		
		//Parseamos los que no son strings
		SimpleDateFormat formatter = new SimpleDateFormat("y-M-d");
		Date date = null;
        try {
            date = formatter.parse(pubDateStr);
        } catch (ParseException pe) {
            pe.printStackTrace();
        }
        
        int userid=0;
        int channelid = 0;
        int sectionid = 0;
        try{
        	channelid = Integer.parseInt(channelidStr);
        	sectionid = Integer.parseInt(sectionidStr);
        }catch (NumberFormatException nmb) {
        	nmb.printStackTrace();
		}
		
        Article a = new Article( link,  title,  content,  date,  description,  keywords,
    			 userid,  channelid,  sectionid);
        boolean crear = daoarticle.create(a,us);
        
        if(crear){
            System.out.println("creada la noticia");
        	try {
				rs.sendRedirect("paginaAdmin");
			} catch (IOException e) {
				e.printStackTrace();
			}
        }
        	mv = new ModelAndView("errorDatos");
        
        return mv;
	}
	
	@RequestMapping(value = {"formEditar"})
	public ModelAndView formEditar(HttpSession sesion,
			@RequestParam("guid")int guid){
		Article a = daoarticle.read(guid);
		
		ModelAndView mv = new ModelAndView("formEditar");
		mv.addObject("guid",guid);
		mv.addObject("article",a);
		return mv;
	}
	
	@RequestMapping(value = {"editar"})
	public ModelAndView editar(HttpSession sesion,HttpServletResponse rs,
			@RequestParam("guid")int guid,
			@RequestParam("link")String link,
			@RequestParam("title")String title,
			@RequestParam("content")String content,
			@RequestParam("pubDate")String pubDateStr,
			@RequestParam("description")String description,
			@RequestParam("channelid")String channelidStr,
			@RequestParam("sectionid")String sectionidStr,
			@RequestParam("keywords")String keywords){
		
		ModelAndView mv = null;
		User us = (User)sesion.getAttribute("user");
		
		//Parseamos los que no son strings
		SimpleDateFormat formatter = new SimpleDateFormat("y-M-d");
		Date date = null;
        try {
            date = formatter.parse(pubDateStr);
        } catch (ParseException pe) {
            pe.printStackTrace();
        }
        
        int userid=0;
        int channelid = 0;
        int sectionid = 0;
        try{
        	channelid = Integer.parseInt(channelidStr);
        	sectionid = Integer.parseInt(sectionidStr);
        }catch (NumberFormatException nmb) {
        	nmb.printStackTrace();
		}
		
        Article a = new Article(guid, link,  title,  content,  date,  description,  keywords,
    			 userid,  channelid, sectionid);
        boolean modificar = daoarticle.update(a,us);
        
        if(modificar){
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
	
	@RequestMapping(value = {"borrar"})
	public ModelAndView borrar(HttpSession sesion,HttpServletResponse rs,
			@RequestParam("guid")int guid){
		boolean ok = daoarticle.delete(guid);
		ModelAndView mv = null;

		
		if(ok){
			try {
				rs.sendRedirect("paginaAdmin");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}else{
			mv = new ModelAndView("errorBorrar");
		}
		return mv;
	}
	
	@RequestMapping(value = {"formAddPeriodico"})
	public ModelAndView formAddPeriodico(HttpSession sesion){
		
		ModelAndView mv = new ModelAndView("addPeriodico");
		
		return mv;
	}
	
	@RequestMapping(value = {"addPeriodico"})
	public ModelAndView borrar(HttpSession sesion,HttpServletResponse rs,
			@RequestParam("name")String name,
			@RequestParam("logo")String logo){
		
		Newspaper n = new Newspaper(name, logo);
		ModelAndView mv = null;

		boolean ok = daonewspaper.create(n);
		if(ok){
			try {
				rs.sendRedirect("formAddRSS");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}else{
			mv = new ModelAndView("errorDatos");
		}
		return mv;
	}

	@RequestMapping(value = {"buscarIndex"})
	public ModelAndView buscarIndex(HttpSession sesion, HttpServletResponse rs,
			@RequestParam("filter")String filter,
			@RequestParam("keyword")String keyword){
		
		User user = (User)sesion.getAttribute("user");
		ModelAndView mv = new ModelAndView("paginaAdmin");

		List<Article>lista = null; 
		
		if(filter.equals("id")){
			int keywordparsed;
			try{
				keywordparsed = Integer.parseInt(keyword);
			}catch (Exception e) {
				mv = new ModelAndView("errorDatos");
			}
		}else{
			if(keyword.trim().equals("") || keyword.trim().isEmpty() || keyword == null){
				mv = new ModelAndView("errorDatos");
			}
			if (user.getRole().equals("dios") ){
				lista = daoarticle.buscar(filter, keyword);
			}
			else{
				lista = daoarticle.buscar(filter, keyword,user.getId());
			}
		}
		mv.addObject("lista", lista);

		return mv;
	}
	
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
		
		if(pubDate.trim().equals("")){
			listaArticulos = daolindex.listar(periodico, seccion);
		}else{
			try {
	            date = formatter.parse(pubDate);
	        } catch (ParseException pe) {
	            pe.printStackTrace();
	        }
			listaArticulos = daolindex.listar(periodico, seccion,date);
		}
		
		if (! listaArticulos.isEmpty()){
			listadoCompleto.add(new ListadoIndex(section.getName(), listaArticulos));			
		}
		
		
				
		ModelAndView mv = new ModelAndView("noticias");
		mv.addObject("listadoCompleto",listadoCompleto);

		return mv;

		}		
}
