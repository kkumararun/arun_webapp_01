package com.arun.pg.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

import org.springframework.transaction.annotation.Transactional;

@Entity
@Transactional
public class Item{

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int itemId;
	@OneToOne
	@JoinColumn(name = "pid")
	private Product p;
	private int quantity;
	@ManyToOne
	@JoinColumn(name = "cartId", insertable = false)
	private ShoppingCart cart;

	public Item() {
	}

	public Item(Product p, int quantity) {
		this.p = p;
		this.quantity = quantity;
	}

	/**
	 * @return the itemId
	 */
	public int getItemId() {
		return itemId;
	}

	

	public void setItemId(int itemId) {
		this.itemId = itemId;
	}



	public Product getP() {
		return p;
	}



	public void setP(Product p) {
		this.p = p;
	}

	public ShoppingCart getCart() {
		return cart;
	}



	public void setCart(ShoppingCart cart) {
		this.cart = cart;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

}

