package com.arun.pg.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import com.arun.pg.dao.ProductDAO;
import com.arun.pg.model.Product;

@Controller
public class ViewAllController {

	@Autowired
	ProductDAO productDao;
	
	@RequestMapping("/products/all")
	@ResponseBody
	public List<Product> getAllProducts(){
		
		return productDao.getAllProduct();
		
	}
	
	
	
	
	
}
