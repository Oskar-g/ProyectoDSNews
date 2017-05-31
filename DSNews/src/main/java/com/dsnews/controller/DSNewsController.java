package com.dsnews.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DSNewsController {
	@RequestMapping(value = {"/", "index","/index"})
	public ModelAndView index(){
		
		ModelAndView mv = new ModelAndView("index");
		
		return mv;
	}
	
	@RequestMapping("another")
	public String otherPage(){
				
		return "pagetoload";
	}
	
	
}
