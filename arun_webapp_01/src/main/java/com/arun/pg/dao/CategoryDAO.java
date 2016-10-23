package com.arun.pg.dao;

import java.util.List;

import com.arun.pg.model.Category;



public interface CategoryDAO {
	
	
	public List<Category> getAll();
	
	public void insertCategory(Category category);

	public Category getCategoryName(String name);
	
	public Category getCategoryId(int id); 

	

}
