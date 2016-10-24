package com.arun.pg.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.arun.pg.dao.UserDAO;
import com.arun.pg.model.User;

@Controller
public class SignUpController {

	@Autowired
	UserDAO userDAO;

	// login page
	@RequestMapping("/login")
	public String login() {

		return "Login";
	}

	// register the user
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insertUserData(@Valid @ModelAttribute("user") User user, BindingResult result) {
		
		if (result.hasErrors()) {
			
			return "SignUp";
		}
		
		userDAO.insertUser(user);
		return "redirect:/login";
	}


	// Logout User code
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logoutPage(HttpServletRequest request, HttpServletResponse response) {

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return "redirect:/login?logout";
	}


	@RequestMapping("/403")
	public String accessDen() {

		return "403";
	}

			
	// signup form and sending the blank user object to spring form
	@RequestMapping("/signup")
	public ModelAndView gotoSignUp() {

		ModelAndView mv = new ModelAndView("SignUp");
		mv.addObject("user", new User());
		return mv;

	}

	//contact us page
	@RequestMapping("/contact")
	public String gotoContact() {

		return "Contact";
	}

}
