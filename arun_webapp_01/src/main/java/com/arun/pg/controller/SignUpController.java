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
	public String login(@RequestParam(name="success", required=false) boolean success){
				
		return "Login";
	}
}
