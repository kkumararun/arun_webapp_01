package com.arun.pg.dao;

import java.util.ArrayList;
import java.util.List;



import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.arun.pg.model.Product;


@Transactional
public class ProductDAOImpl implements ProductDAO{

	@Autowired
	private SessionFactory session;
		
	@SuppressWarnings({ "unchecked", "deprecation" })
	@Override

	public List<Product> getAllProduct() {
//		Product product= null;
//		{
//			product=new Product();
//		product.setProductId(1);
//		product.setProductBrand("Amway");
//		product.setProductName("any product name");
//		product.setProductQuantity(10);		
//		productList.add(product);
//		
//		product=new Product();
//	product.setProductId(5);
//	product.setProductBrand("T-Shirt");
//	product.setProductName("any product na12me");
//	product.setProductQuantity(101);		
//	productList.add(product);
//		}
//		return productList;
//		
		return session.getCurrentSession().createQuery("from Product").list();

	
	}

	@Override
	public void insertProduct(Product p) {
		session.getCurrentSession().persist(p);		
	}

	
	@Override
	public void deleteProductById(int productId) {
		session.getCurrentSession().delete(getProductById(productId));

		
	}

	@Override
	public void updateProduct(Product product) {
		session.getCurrentSession().update(product);		
	}

	@Override
	public Product getProductById(int productId) {
		// if you'll use load method their

				Product p = session.getCurrentSession().get(Product.class, new Integer(productId));
				// Product p = (Product) session1.load(Product.class, new Integer(id));

				return p;
	}

	@Override
	public List<Product> getProductByCategory(String category) {
		// TODO Auto-generated method stub
		Query query = session.getCurrentSession().createQuery("from Product WHERE category=?");
		query.setParameter(0, category);
		return query.list();
	}	
	
	@Override
	public Product getProductByPrice(int productPrice) {
		Product p = session.getCurrentSession().get(Product.class, new Integer(productPrice));
		return p;
	}

}
