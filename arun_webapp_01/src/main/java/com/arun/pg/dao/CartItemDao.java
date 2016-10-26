package com.arun.pg.dao;

import com.arun.pg.model.Cart;
import com.arun.pg.model.CartItem;

public interface CartItemDao {


    void addCartItem(CartItem cartItem);

    void removeCartItem(CartItem cartItem);

    void removeAllCartItems(Cart cart);

    CartItem getCartItemByProductId(int productId);

}
	