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
public class DSNewsControllerLogin {
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
	
	
	@RequestMapping(value = {"formLogin"})
	public ModelAndView formlogin(HttpSession sesion, HttpServletResponse rs){
		
		ModelAndView mv = new ModelAndView("formLogin");
		
		//Comprobar que el usuario no esté logueado ya...
		try{
			User user = (User)sesion.getAttribute("user");
			if (user != null){
				rs.sendRedirect("paginaAdmin");
				
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
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
	
	@RequestMapping(value = {"logout"})
	public ModelAndView logout(HttpSession sesion, HttpServletResponse rs){
		
		sesion.invalidate();
		
		try {
			rs.sendRedirect("index");
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return null;
	}
}
