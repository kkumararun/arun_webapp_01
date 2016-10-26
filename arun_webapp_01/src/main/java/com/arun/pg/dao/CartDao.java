package com.arun.pg.dao;

import java.io.IOException;

import com.arun.pg.model.Cart;

public interface CartDao {


    Cart getCartById(int cartId);
    Cart validate(int cartId) throws IOException;
    void update(Cart cart);

}
