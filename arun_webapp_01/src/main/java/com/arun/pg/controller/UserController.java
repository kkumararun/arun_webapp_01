package com.arun.pg.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {

	
	@RequestMapping("/all")
	public String getAllProductData(){
		
		return "ViewAll";
	}
	
	
	@RequestMapping(value={"/viewall/{productBrand}"})
	public ModelAndView viewAllProductsByCat(@PathVariable("productBrand") String p){

		ModelAndView modelAndView=new ModelAndView("ViewAll");
			modelAndView.addObject("brand",""+p);
	
		
		return modelAndView;		
	}

	@RequestMapping(value={"/viewbyproduct/{productCat}"})
	public ModelAndView viewAllProductsByID(@PathVariable("productCat") String p){

		ModelAndView modelAndView=new ModelAndView("SingleView");
			modelAndView.addObject("sno",""+p);
		
		return modelAndView;		
	}	
}
