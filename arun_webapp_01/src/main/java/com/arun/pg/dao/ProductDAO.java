package com.arun.pg.dao;

import java.util.List;

import com.arun.pg.model.Product;

public interface ProductDAO {
	
	public List<Product> getAllProduct();
	public void insertProduct(Product p);
	public void deleteProductById(int productId);
	void updateProduct(Product product);
	public Product getProductById(int productId);
	public Product getProductByPrice(int productPrice);
	
}
