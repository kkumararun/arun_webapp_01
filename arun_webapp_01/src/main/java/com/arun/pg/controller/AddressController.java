package com.arun.pg.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Controller;

import com.arun.pg.dao.UserDAO;
import com.arun.pg.dao.UserDAOImpl;
import com.arun.pg.model.BillingAddress;
import com.arun.pg.model.Cart;

@Controller
public class AddressController {

	@Autowired
	UserDAO userDAO;
	public BillingAddress getAddress()
	{
		return new BillingAddress();
	}
	
	public String insertAddress(BillingAddress billingAddress,MessageContext messageContext,Cart cart)
	{
		billingAddress.setUser(cart.getUser());
		String result=userDAO.insertBillingAddress(billingAddress);
		if(result=="inserted")
		{			
		return "success";
		}
		return "fail";
		
	}
	
}
