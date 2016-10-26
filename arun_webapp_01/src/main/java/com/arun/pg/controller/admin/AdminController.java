package com.arun.pg.controller.admin;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.arun.pg.dao.CategoryDAO;
import com.arun.pg.dao.ProductDAO;
import com.arun.pg.model.Category;
import com.arun.pg.model.Product;

@Controller
@RequestMapping("/admin")
public class AdminController {

	
	@Autowired
	ProductDAO productDao;

	@Autowired
	CategoryDAO categoryDao;

	@RequestMapping("/all")
	public ModelAndView getAllProducts(){
		ModelAndView modelAndView=new ModelAndView("adminview/AdminPage");
		modelAndView.addObject("product",new Product());
		modelAndView.addObject("categories", categoryDao.getAll());
		modelAndView.addObject("productData",productDao.getAllProduct());
		return modelAndView;
		
	}
	
	
	
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insertProduct(@ModelAttribute("productId") Product product,HttpServletRequest request) {

		if (product.getProductId() == 0) {
			productDao.insertProduct(product);
						
			MultipartFile file = product.getFile();		
			String originalfile = file.getOriginalFilename();			
			String filepath = request.getSession().getServletContext().getRealPath("/resources/images/productimages/");	
			System.out.println("Path of file "+filepath);
			String filename = filepath + "\\" + product.getProductId() + ".jpg";
			System.out.println("File Path File "+filepath);
			
			try {
				byte imagebyte[] = product.getFile().getBytes();
				BufferedOutputStream fos = new BufferedOutputStream(new FileOutputStream(filename));
				fos.write(imagebyte);
				fos.close();
				
			} catch (IOException e) {
				e.printStackTrace();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				
			}

			
			
		} else {
			productDao.updateProduct(product);
			
		}

		return "redirect:/admin/all";
//		return "adminview/Admin_View";
	}

	
	/*
	 * if the mapping is edit/withid so, all data after clicking on edit button
	 * will show in the form so that's why we are returning the our page to
	 * ViewResolver it'll return the same page with data but not refresh the
	 * data from form.
	 * 
	 * 
	 */
	@RequestMapping("/edit/{id}")
	public String editProduct(@PathVariable("id") int id, Model model) {
		
		model.addAttribute("product", productDao.getProductById(id));
		model.addAttribute("productData", productDao.getAllProduct());
		return "adminview/AdminPage";
	}
	
	
	/*
	 * it's removing data using id. and deleteProductById(id) defined in DAO.
	 */
	@RequestMapping("/remove/{id}")
	public String removeProduct(@PathVariable("id") int id,Model model) {
		productDao.deleteProductById(id);
		model.addAttribute("msg", "Product Deleted Success Fully ");
		return "redirect:/admin/all";
	}

}
