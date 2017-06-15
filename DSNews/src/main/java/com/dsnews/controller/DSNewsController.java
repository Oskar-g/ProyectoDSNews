package com.dsnews.controller;

import java.io.IOException;
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
import dao.DAOChannel;
import dao.DAONewspaper;
import dao.DAOSection;
import functions.Functions;
import modelos.Article;
import modelos.Newspaper;
import modelos.Section;
import modelos.User;

@Controller
public class DSNewsController {

	@Autowired
	DAOArticle daoarticle;
	@Autowired
	DAOSection daosection;
	@Autowired
	DAONewspaper daonewspaper;
	@Autowired
	DAOChannel daochannel;
	
	/*
	 * ---------------------------------------------------------------------
	 * ModelAndViews
	 * ---------------------------------------------------------------------
	 */
		
	/**
	 * Página de Administración
	 * 
	 * Desde aquí se puede acceder a la creación, edicion y modificación de articulos,
	 * adición de rss y creación de periodicos.
	 * Se verificará que el usuario está logueado para poder acceder aquí y en base a su rol
	 * se generaráun contenido u en la lista de articulos.
	 * 
	 * Si el usuario no está logueado se redireccionará al controlador formLogin
	 * 
	 * @param sesion	Objeto de sesión
	 * @param rs		Objeto de response
	 * 
	 * @return			Model and View que corresponde a paginaAdmin
	 */
	@RequestMapping(value = {"paginaAdmin"})
	public ModelAndView paginaAdmin(HttpSession sesion, HttpServletResponse rs){
		ModelAndView mv = new ModelAndView("paginaAdmin");
		
		User user = (User)sesion.getAttribute("user");
		
		//Si el usuario no está logueado...
		if(user==null){
			try {
				rs.sendRedirect("formLogin");
			} catch (IOException e) {
				e.printStackTrace();
			}
			
		} else {
			
			List<Article> lista = new ArrayList<Article>();
			
			if(user.getRole().equals("admin")){
				lista = daoarticle.listar(user);
				
			}else if (user.getRole().equals("dios")){
				lista = daoarticle.listarSuperUser();
				
			}//Fin de Si Rol de usuario...
			
			System.out.println(user.getRole().equals("dios"));
			mv.addObject("lista", lista);
			mv.addObject("role", user.getRole().equals("dios"));
			
		}//Fin de Si usuario logueado...
	
		return mv;
		
	}//Fin de paginaAdmin
	
	// ---------------------------------------------------------------------

	/**
	 * Crear artículos. 
	 * 
	 * Para acceder a esta página el usuario debe de estar logueado
	 * Si el usuario no está logueado se redireccionará al controlador formLogin
	 * 
	 * @param sesion	Objeto de sesión
	 * @param rs		Objeto de response
	 * 
	 * @return			Model and View que corresponde a formCrear
	 */
	@RequestMapping(value = {"formCrear"})
	public ModelAndView formCrear(HttpSession sesion, HttpServletResponse rs){
		ModelAndView mv = null;
		
		User user = (User)sesion.getAttribute("user");
		
		//Si el usuario no está logueado...
		if(user==null){
			
			try {
				rs.sendRedirect("formLogin"); //mandar a login
			} catch (IOException e) {
				e.printStackTrace();
			}
			
		}else {
			mv = new ModelAndView("formCrear");
		
			List<Newspaper> newspapers = daonewspaper.listar();
			List<Section> sections = daosection.listar();
			mv.addObject("newspapers", newspapers);
			mv.addObject("sections", sections);
		}

		return mv;
	
	}//Fin de formCrear
	
	// ---------------------------------------------------------------------

	/**
	 * Do Crear artículo
	 * 
	 * Si la inserción de datos es correcta se redireccionará al panel de administración
	 * 
	 * @param sesion			Objeto de sesión
	 * @param rs				Objeto de response
	 * @param title				Título de la noticia
	 * @param content			Contenido de la noticia
	 * @param description		Breve descripción de la noticia
	 * @param sectionId			Id de la sección a la que pertenece
	 * @param keywords			Palabras clave de la noticia.
	 * 
	 * @return			Model and View que corresponde a Error de datos si 
	 * 					la inserción es errónea
	 */
	@RequestMapping(value = {"crear"})
	public ModelAndView crear(HttpSession sesion,HttpServletResponse rs,
			@RequestParam("title")String title,
			@RequestParam("content")String content,
			@RequestParam("description")String description,
			@RequestParam("sectionId")int sectionId,
			@RequestParam("keywords")String keywords){
		
		ModelAndView mv = new ModelAndView("errorDatos");
		User us = (User)sesion.getAttribute("user");

		int channelid = 1;
		int userid;
		
		//Obtener el siguiente GUID
		int nextguid = daoarticle.getMax().getGuid();
		String server = daochannel.read(1).getLink();
		System.out.println(server);
		
        try{
        	userid=us.getId();
        }catch (NumberFormatException nmb) {
        	nmb.printStackTrace();
        	return mv;
		}
        
		String link = Functions.linkGenerator(title, server, nextguid);
        
        Article article = new Article(link, title, content, new Date(),description, keywords, userid, channelid, sectionId);
        article.setGuid(nextguid);
        
        
        if (article.getTitle().trim().equals("") || article.getContent().trim().equals("") || article.getDescription().trim().equals("") || article.getKeywords().trim().equals("")){
        	return mv;
        }else{
        	try {
        		daoarticle.create(article);
        		System.out.println("creada la noticia");
				rs.sendRedirect("paginaAdmin");
			} catch (IOException e) {
				e.printStackTrace();
			}
        }
        
        return null;
  	
	}//Fin de crear
	
	// ---------------------------------------------------------------------
	
	/**
	 * Formulario para editar artículos. 
	 * 
	 * Para acceder a esta página el usuario debe de estar logueado
	 * Si el usuario no está logueado se redireccionará al controlador formLogin
	 * 
	 * @param sesion	Objeto de sesión
	 * @param rs		Objeto de response
	 * @param guid		identificador inequívoco del artículo
	 * 
	 * @return			Model and View que corresponde a formEditar
	 */
	@RequestMapping(value = {"formEditar"})
	public ModelAndView formEditar(HttpSession session, HttpServletResponse rs,
		@RequestParam("guid")int guid){
	
		ModelAndView mv = null;
		
		User user = (User)session.getAttribute("user");
		List<Section> sections = daosection.listar();
		
		//Verificar que el usuario está conectado...
		if(user==null){
			
			try {
				rs.sendRedirect("formLogin");
			} catch (IOException e) {
				e.printStackTrace();
			}
			
		} else {
		
			Article article = daoarticle.read(guid);
			
			//Ha tratado de editar un articulo que no le pertenece sin ser dios, mandando error...
			if (user.getId()!=article.getUserId() && ! user.getRole().equals("dios") ){
					mv = new ModelAndView("errorDatos");
					
			} else {
					
				mv = new ModelAndView("formEditar");
	
				mv.addObject("article",article);
				mv.addObject("sections",sections);
			}
		}
		return mv;
		
	}//Fin de formEditar
	
	// ---------------------------------------------------------------------

	/**
	 * Efectuar la edición de un artículo
	 * 
	 * Si la modificación de datos es correcta se redireccionará al panel de administración
	 * 
	 * @param sesion			Objeto de sesión
	 * @param rs				Objeto de response
	 * @param guid				Identificador inequivoco del articulo
	 * @param title				Título de la noticia
	 * @param content			Contenido de la noticia
	 * @param description		Breve descripción de la noticia
	 * @param sectionId			Id de la sección a la que pertenece
	 * @param keywords			Palabras clave de la noticia.
	 * 
	 * @return			Model and View que corresponde a Error de datos si 
	 * 					la modificació es errónea
	 */
	@RequestMapping(value = {"editar"})
	public ModelAndView editar(HttpSession sesion,HttpServletResponse rs,
			@RequestParam("guid")int guid,
			@RequestParam("title")String title,
			@RequestParam("content")String content,
			@RequestParam("description")String description,
			@RequestParam("sectionId")int sectionId,
			@RequestParam("keywords")String keywords){
		
		ModelAndView mv = new ModelAndView("errorDatos");
		
		User us = (User)sesion.getAttribute("user");
		
        int userid=0;
        
        //Parsear las ID del canal y sección
        try{
        	userid = us.getId();
        }catch (NumberFormatException nmb) {
        	nmb.printStackTrace();
		}
		
        Article article = new Article(guid, null,  title,  content,  new Date(),  description,  keywords,
    			 userid,  1, sectionId);
        boolean modificar = daoarticle.update(article);
        
        //Si se ha aplicado el update...
        if(modificar){
        	
        	try {
				rs.sendRedirect("paginaAdmin");
			} catch (IOException e) {
				e.printStackTrace();
			}
        }
        
        return mv;
		
	}//Fin de editar
	
	// ---------------------------------------------------------------------
	
	/**
	 * Borrar articulo
	 * 
	 * @param sesion			Objeto de sesión
	 * @param rs				Objeto de response
	 * @param guid				Identificador inequivoco del articulo
	 * 
	 * @return					Model And View de errorBorrare si hay un error durante el borrado
	 */
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
		
	}//Fin de borrar
	
	// ---------------------------------------------------------------------
	
	/**
	 * Buscar Artículos
	 * 
	 * Filtra los articulos del usuario mediante id, titulo o contenido
	 * Si el usuario no está logueado se redireccionará al controlador formLogin
	 * 
	 * @param sesion	Objeto de sesión
	 * @param rs		Objeto de response
	 * @param filter	Tipo de filtro {guid,title,content}
	 * @param keyword	palabra o id a buscar
	 * 
	 * @return			Model and View que corresponde a Error de datos si 
	 * 					la hay algún problema en la búsqueda, si todo es correcto
	 * 					cargará la vista de paginaAdmin.js
	 */
	@RequestMapping(value = {"buscarIndex"})
	public ModelAndView buscarIndex(HttpSession sesion, HttpServletResponse rs,
			@RequestParam("filter")String filter,
			@RequestParam("keyword")String keyword){
		
		User user = (User)sesion.getAttribute("user");
		ModelAndView mv = new ModelAndView("paginaAdmin");

		List<Article>lista = new ArrayList<Article>(); 
		
		//Si el filtro es la id... (guid)
		if(filter.equals("id")){

			try{
				//Tratar de parsear el valor para verificar que es entero...
				Integer.parseInt(keyword);
			}catch (Exception e) {
				mv = new ModelAndView("errorDatos");
			}
			
		}else{
			
			//Evitar inyección 
			if(keyword.trim().equals("") || keyword.trim().isEmpty() || keyword == null){ 
				mv = new ModelAndView("errorDatos");
			}
			
			//Comprobando el rol de usuario...
			if (user.getRole().equals("dios")){
				lista = daoarticle.buscar(filter, keyword);
			}
			else{
				lista = daoarticle.buscar(filter, keyword,user.getId());
			}
			
		}//Fin de Si el filtro no es la id
		mv.addObject("lista", lista);
		mv.addObject("role", user.getRole().equals("dios"));
				
		return mv;
		
	}//Fin de buscarIndex
	
}//Fin de DSNewsController
