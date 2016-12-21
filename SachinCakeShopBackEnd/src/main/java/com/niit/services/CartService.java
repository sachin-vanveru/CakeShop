package com.niit.services;

import org.springframework.beans.factory.annotation.Autowired;

import com.niit.dao.CartDao;
import com.niit.dao.CartDaoImpl;
import com.niit.models.Cart;

public class CartService {

	  @Autowired
	    private CartDao cartDao;

	    public Cart getCartById(int cartId) {
	        return cartDao.getCartById(cartId);
	    }

	    public void update(Cart cart) {
	        cartDao.updateCart(cart);
	    }
}
