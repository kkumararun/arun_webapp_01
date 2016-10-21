package com.arun.pg.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LandingController {

	@RequestMapping("/")
public ModelAndView helloWorld(){
	
	ModelAndView model=new ModelAndView("LandingPage");
	model.addObject("msg","Welcome to my page");
	return model;
}

	
}
