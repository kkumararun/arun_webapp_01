package com.arun.pg.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;


@Entity

public class CustomerOrder {
	 @Id
	    @GeneratedValue
	    private int customerOrderId;
	 @OneToOne
	    @JoinColumn(name = "cartId")
	    private Cart cart;

	    @OneToOne
	    @JoinColumn(name = "customerId")
	    private User user;

	    @OneToOne
	    @JoinColumn(name = "billingAddressId")
	    private BillingAddress billingAddress;

	    @OneToOne
	    @JoinColumn(name="shippingAddressId")
	    private ShippingAddress shippingAddress;
	    public int getCustomerOrderId() {
		return customerOrderId;
	}

	public void setCustomerOrderId(int customerOrderId) {
		this.customerOrderId = customerOrderId;
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public BillingAddress getBillingAddress() {
		return billingAddress;
	}

	public void setBillingAddress(BillingAddress billingAddress) {
		this.billingAddress = billingAddress;
	}

	public ShippingAddress getShippingAddress() {
		return shippingAddress;
	}

	public void setShippingAddress(ShippingAddress shippingAddress) {
		this.shippingAddress = shippingAddress;
	}

		

}

