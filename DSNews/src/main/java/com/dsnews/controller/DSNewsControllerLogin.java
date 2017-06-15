package com.dsnews.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dao.DAOUser;

import modelos.User;

@Controller
public class DSNewsControllerLogin {
	@Autowired
	DAOUser daouser;

	/**
	 * Formulario de Login
	 * 
	 * Carga la vista con el formulari de acceso a la plataforma para los administradores
	 * Si ya existe una sesión con un parámetro como objeto de usuario se redireccionará
	 * al panel de administración.
	 * 
	 * @param sesion	Objeto de sesión
	 * @param rs		Objeto de response
	 * 
	 * @return			Model and View que corresponde a formLogin
	 */
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
	
	// ----------------------------------------------------------------------------------
	
	/**
	 * Login
	 * 
	 * Genera una sesión con los datos del usuario para tener acceso al sitema
	 * Si le verificación es errónea, retornará a la vista loginFalse
	 * si no, a la vista loginTrue.
	 * 
	 * @param sesion	Objeto de sesión
	 * @param name		Nombre de la cuenta del usuario
	 * @param password	Password del usuario
	 * 
	 * @return			Model And View de loginTrue o loginFalse dependiendo del 
	 * 					resultado en la busqueda de coincidencia de usuario 
	 */
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
	
	// ----------------------------------------------------------------------------------
		
	/**
	 * Desconectar Usuario
	 * 
	 * Destruye la sesión actual
	 * 
	 * @param sesion	Objeto de sesión
	 * @param rs		Objeto de response
	 * 
	 * @return			null, contempla una redirección al controlador "index"
	 */
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
