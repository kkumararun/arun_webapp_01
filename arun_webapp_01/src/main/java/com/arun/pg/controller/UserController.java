package com.arun.pg.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.arun.pg.dao.ProductDAO;
import com.arun.pg.model.Product;

@Controller
public class UserController {

	@Autowired
	ProductDAO productDAO;
	@RequestMapping("/all")
	public String getAllProductData() {

		return "ViewAll";
	}
	/*
	 * 
	 * about us View
	 */

	@RequestMapping("/aboutUs")
	public String aboutUsMove() {

		return "AboutUs";
	}

	/*
	 * 
	 * view all item by product
	 */

	@RequestMapping(value = { "/viewall/{productBrand}" })
	public ModelAndView viewAllProductsByCat(@PathVariable("productBrand") String p) {

		ModelAndView modelAndView = new ModelAndView("ViewAll");
		modelAndView.addObject("brand", "" + p);

		return modelAndView;
	}

	/*
	use to single product view
	
	*/
	@RequestMapping(value = { "/viewbyproduct/{productCat}" })
	public ModelAndView viewAllProductsByID(@PathVariable("productCat") String p) {

		ModelAndView modelAndView = new ModelAndView("SingleView");
		modelAndView.addObject("sno", "" + p);

		return modelAndView;
	}
	Product product;

	@RequestMapping("/singledata/{id}")
	public ModelAndView singledata(@PathVariable("id")int id) {
		ModelAndView modelAndView = new ModelAndView("SingleView");
		product=productDAO.getProductById(id);
		modelAndView.addObject("product", productDAO.getProductById(id));
		
		return modelAndView;
	}
	
	

}
