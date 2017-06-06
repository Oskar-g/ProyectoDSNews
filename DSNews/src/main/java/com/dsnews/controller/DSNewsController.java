package com.dsnews.controller;

import java.io.IOException;
import java.net.URL;
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

import com.rometools.rome.feed.synd.SyndEntry;
import com.rometools.rome.feed.synd.SyndFeed;
import com.rometools.rome.io.SyndFeedInput;
import com.rometools.rome.io.XmlReader;

import dao.DAOArticle;
import dao.DAOArticleRss;
import dao.DAOArticleRssImpl;
import dao.DAORss;
import dao.DAORssImpl;
import dao.DAOSection;
import dao.DAOUser;
import modelos.Article;
import modelos.ArticleRss;
import modelos.Rss;
import modelos.Section;
import modelos.User;

@Controller
public class DSNewsController {
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
	
	@RequestMapping(value = {"/", "index"})
	public ModelAndView index(){
		boolean ok = false;
        List<Rss> lista = daorss.listar();
        
		for (Rss rss : lista) {
			try {
                URL feedUrl = new URL(rss.getLink());
                int rssId = rss.getId();
                SyndFeedInput input = new SyndFeedInput();
                SyndFeed feed = input.build(new XmlReader(feedUrl));

                for (SyndEntry entrada: feed.getEntries()) 
                {
					
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
                	
                	//String cover = entrada.getEnclosures().get(0).getUrl();
                	System.out.println(entrada);
                	                	
                	ArticleRss arss = new ArticleRss(link,title,description,pubDate,rssId,cover);
                	daoarss.create(arss);	
				}
                
                ok = true;
            }
            catch (Exception ex) {
                ex.printStackTrace();
                System.out.println("ERROR: "+ex.getMessage());
            }
		}
		
		List<Section> sectionList = daosec.listar();
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("sectionList",sectionList);
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
				User u = new User(name);
				
				boolean ok = daou.login(u, password);
				if(ok){
					User us = daou.getUser(name);
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
		if(user!=null){
			if(user.getRole().equals("admin")){
				List<Article> lista = daoa.listar(user);
				mv = new ModelAndView("paginaAdmin");
				mv.addObject("lista", lista);
			}else if (user.getRole().equals("dios")){
				List<Article> lista = daoa.listarSuperUser(user);
				mv = new ModelAndView("paginaAdmin");
				mv.addObject("lista", lista);
			}
		}else{
			try {
				rs.sendRedirect("formLogin");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return mv;
	}
	
	@RequestMapping(value = {"formCrear"})
	public ModelAndView formCrear(HttpSession sesion){
		ModelAndView mv = new ModelAndView("formCrear");
		
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
        boolean crear = daoa.create(a,us);
        
        if(crear){
            System.out.println("creada la noticia");
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
	
	@RequestMapping(value = {"formEditar"})
	public ModelAndView formEditar(HttpSession sesion,
			@RequestParam("guid")int guid){
		Article a = daoa.read(guid);
		
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
        boolean modificar = daoa.update(a,us);
        
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
		boolean ok = daoa.delete(guid);
		ModelAndView mv = null;

		
		if(ok){
			try {
				rs.sendRedirect("paginaAdmin");
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else{
			mv = new ModelAndView("errorBorrar");
		}
		return mv;
	}

}
