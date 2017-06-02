package com.dsnews.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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
import dao.DAOUser;
import modelos.Article;
import modelos.User;
//ESTO ES UNA PRUEBA, YA SE REESTRUCTURARÁ

@Controller
public class DSNewsControllerUsers {
	@Autowired
	DAOUser daou;
	@Autowired
	DAOArticle daoa;
	
	@RequestMapping("prueba")
	public ModelAndView index(){
		
		ModelAndView mv = new ModelAndView("index");
		
		return mv;
	}
	
}

