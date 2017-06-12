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
	
}
