package com.arun.pg.dao;

import com.arun.pg.model.CustomerOrder;

public interface CustomerOrderDao {
	void addCustomerOrder(CustomerOrder customerOrder);

    double getCustomerOrderGrandTotal(int cartId);
}
