package com.arun.pg.dao;

import com.arun.pg.model.User;

public interface UserDAO {
	
	public void insertUser(User user);
	public User getUserByEmail(String email);
}
