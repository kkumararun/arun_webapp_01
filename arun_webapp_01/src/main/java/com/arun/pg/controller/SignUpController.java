package com.arun.pg.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SignUpController {
	
	
	@RequestMapping("/signup")
	public String gotoSignUp(){
				
		return "SignUp";
	}

	
	@RequestMapping("/login")
	public String login(){
				
		return "Login";
	}
	
	@RequestMapping("/all")
	public String getAllProductData(){
		
		return "ViewAll";
	}
}
