package com.arun.pg.dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.arun.pg.model.User;

@Transactional
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SessionFactory session;

	@Override
	public void insertUser(User user) {
		session.getCurrentSession().persist(user);

	}

	@Override
	public User getUserDetails(String userid) {

		User user = session.getCurrentSession().get(User.class, new String(userid));
		return user;

	}

}
