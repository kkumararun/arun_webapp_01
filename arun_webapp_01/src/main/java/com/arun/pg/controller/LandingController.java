package com.arun.pg.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LandingController {

	/*
	
	Controller to open the landing page
	*/
	
	@RequestMapping(value={"/","/welcome"})
public ModelAndView helloWorld(){
	
	ModelAndView model=new ModelAndView("LandingPage");
	model.addObject("msg","Welcome to my page");
	return model;
}
	
}
