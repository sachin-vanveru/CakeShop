package com.niit.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.dao.ItemDaoImpl;
import com.niit.models.Cart;
import com.niit.models.Item;

@Service
public class CartItemService {
	   @Autowired
	    private ItemDaoImpl cartItemDao;

	    public void addCartItem(Item cartItem) {
	        cartItemDao.addItem(cartItem);
	    }

	    public void removeCartItem(Item cartItem) {
	        cartItemDao.deleteItem(cartItem);
	    }

	    public void removeAllCartItems(Cart cart){
	        cartItemDao.deleteItem(cart);
	    }

	    public CartItemService getCartItemByItemId (int itemId) {
	        return cartItemDao.listitem(itemId);
	    }

}
