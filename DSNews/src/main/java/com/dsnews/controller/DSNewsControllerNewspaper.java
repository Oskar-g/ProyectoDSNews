package com.dsnews.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import dao.DAOArticle;
import dao.DAOArticleRss;
import dao.DAOListadoIndex;
import dao.DAONewspaper;
import dao.DAORss;
import dao.DAOSection;
import dao.DAOUser;
import modelos.Newspaper;
import modelos.User;

@Controller
public class DSNewsControllerNewspaper {
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
	
	/**
	 * Formulario para Añadir periódico
	 * 
	 * @param sesion	Objeto Sesión
	 * @param rs		Objeto Response
	 * 
	 * @return			vista de addPeriodico.js
	 */
	@RequestMapping(value = {"formAddPeriodico"})
	public ModelAndView formAddPeriodico(HttpSession session, HttpServletResponse rs){
		
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
			mv = new ModelAndView("addPeriodico");
		}
		
		return mv;
		
	}//Fin de formAddPeriodico
	
	// -------------------------------------------------------------------
	
	/**
	 * Añadir periódico
	 * 
	 * @param sesion	Objeto Sesión
	 * @param rs		Objeto Response
	 * @param name		Nombre del periódico
	 * @param logo		url del logotipo
	 * 
	 * @return			vista de errorDatos.js si la adición es errónea
	 */
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
	
	}//Fin de addPeriodico
	
}//Fin de DSNewsControllerNewspaper
