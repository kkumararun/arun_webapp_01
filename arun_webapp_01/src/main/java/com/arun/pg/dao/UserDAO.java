package com.arun.pg.dao;

import java.util.List;

import com.arun.pg.model.BillingAddress;
import com.arun.pg.model.User;

public interface UserDAO {

	public void insertUser(User user);
	public User getUserDetails(String email);
	public User getUById(int customerId);
	public List<User> getAllCustomers();
	User getCustomerByUsername(String username);
	public String insertBillingAddress(BillingAddress ba);
	
}
