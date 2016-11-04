package com.arun.pg.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;


@Entity
public class User implements Serializable {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="uid")
	private int uid;
	
	@NotEmpty(message="Name Can't be blank")
	@Column(name="name")
	private String name;
	
	@Email
	@NotEmpty(message="email can't be blank")
	@Column(name="email")	
	private String email;
	
	@NotEmpty(message="Password Can't be empty")
	@Column(name="password")
	private String password;
	
	
	@Column(name = "enabled")
	private Boolean enabled;
	@Column(name = "role")
	private String role;
	
	
	
	
	
	public Boolean getEnabled() {
		return enabled;
	}
	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
	/*--------CART-----*/
	@OneToOne(mappedBy="user", cascade=CascadeType.ALL)
	private Cart cart;
	
	public Cart getCart() {
		return cart;
	}
	public void setCart(Cart cart) {
		this.cart = cart;
	}
	/*---------Billing address----*/
	
	@OneToOne(mappedBy="user", cascade=CascadeType.ALL)
	private  BillingAddress billingAddress;
	public BillingAddress getBillingAddress() {
		return billingAddress;
	}
	public void setBillingAddress(BillingAddress billingAddress) {
		this.billingAddress = billingAddress;
	}
	
	/*-------Shipping Address----*/
	@OneToOne(mappedBy="user", cascade=CascadeType.ALL)
	private  ShippingAddress shippingAddress;
	public ShippingAddress getShippingAddress() {
		return shippingAddress;
	}
	public void setShippingAddress(ShippingAddress shippingAddress) {
		this.shippingAddress = shippingAddress;
	}
	
	

}
