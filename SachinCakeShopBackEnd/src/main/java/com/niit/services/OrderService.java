package com.niit.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.dao.OrderDaoImpl;
import com.niit.models.Cart;
import com.niit.models.Order;

@Service
public class OrderService {

	 @Autowired
	    private OrderDaoImpl orderDao;

	    @Autowired
	    private CartItemService cartService;

	    public void addOrder(Order userOrder) {
	    	orderDao.addOrder(userOrder);
	    }

	    public double getOrderGrandTotal(int cartId) {
	        double grandTotal=0;
	        Cart cart=cartService.getCartItemByItemId(cartId);
	        List<CartItem> cartItems = cart.getCartItems();

	        for (CartItem item : cartItems) {
	            grandTotal+=item.getTotalPrice();
	        }

	        return grandTotal;
	    }

}