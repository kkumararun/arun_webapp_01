package com.arun.pg.dao;

import java.io.IOException;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.arun.pg.model.Cart;


@Transactional
public class CartDaoImpl implements CartDao {

	@Autowired
	private SessionFactory session;

	@Autowired
	CustomerOrderDao order;

	@SuppressWarnings({ "unchecked", "deprecation" })
	@Override
	public Cart getCartById(int cartId) {
		// TODO Auto-generated method stub
		Cart p = session.getCurrentSession().get(Cart.class, new Integer(cartId));
		// Product p = (Product) session1.load(Product.class, new Integer(id));

		return p;
	}

	@Override
	public Cart validate(int cartId) throws IOException {

		Cart cart = getCartById(cartId);
		if (cart == null || cart.getCartItems().size() == 0) {
			throw new IOException(cartId + "");
		}

		update(cart);
		return cart;

	}

	@Override
	public void update(Cart cart) {

		int cartId = cart.getCartId();
		double grandTotal = order.getCustomerOrderGrandTotal(cartId);
		cart.setGrandTotal(grandTotal);

		session.getCurrentSession().saveOrUpdate(cart);

	}

}
