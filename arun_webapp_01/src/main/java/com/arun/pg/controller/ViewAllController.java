package com.arun.pg.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.arun.pg.dao.ProductDAO;

public class ViewAllController {

	@Autowired
	ProductDAO productDao;
	
	@RequestMapping("/all")
	public ModelAndView getAllProducts(){
		ModelAndView modelAndView=new ModelAndView("ViewAll");

		modelAndView.addObject("productData",productDao.getAllProduct());
		
		return modelAndView;
		
	}
	
	
	
}
