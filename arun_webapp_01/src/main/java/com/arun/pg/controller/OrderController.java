package com.arun.pg.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.arun.pg.dao.CartDao;
import com.arun.pg.dao.CustomerOrderDao;
import com.arun.pg.model.Cart;
import com.arun.pg.model.CustomerOrder;
import com.arun.pg.model.User;

@Controller
public class OrderController {

   @Autowired
    CartDao cartdao;

   CustomerOrderDao custo;

    @RequestMapping("/order/{cartId}")
    public String createOrder(@PathVariable("cartId") int cartId)
    {
        CustomerOrder customerOrder = new CustomerOrder();
        Cart cart = cartdao.getCartById(cartId);
        customerOrder.setCart(cart);

        User customer = cart.getUser();
        customerOrder.setUser(customer);
        customerOrder.setBillingAddress(customer.getBillingAddress());
        customer.setShippingAddress(customer.getShippingAddress());

        custo.addCustomerOrder(customerOrder);

        return "redirect:/checkout?cartId=" + cartId;

    }

} // The End of Class;

