package com.arun.pg.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.arun.pg.model.Category;
@Transactional
public class CategoryDAOImpl implements CategoryDAO {

	
	@Autowired
	private SessionFactory session;
	
	@Override
	public void insertCategory(Category category) {
		
		session.getCurrentSession().persist(category);
		
	}

	@Override
	public Category getCategoryName(String name) {
		// TODO Auto-generated method stub
		Category category = session.getCurrentSession().get(Category.class, new String(name));
		return category;
	}

	@Override
	public Category getCategoryId(int id) {
		// TODO Auto-generated method stub
		Category category = session.getCurrentSession().get(Category.class,new  Integer(id));
		return category;
	}

	@Override
	public List<Category> getAll() {
		// TODO Auto-generated method stub
		return session.getCurrentSession().createQuery("from Category").list();
	}


}
