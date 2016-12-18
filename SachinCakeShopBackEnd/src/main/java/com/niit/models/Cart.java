package com.niit.models;

import java.util.List;

public class Cart {
  private int cartId;
  private List<Item>item;
  private User user; //has relationship with user class
 
  public int getCartId() {
	return cartId;
}
public void setCartId(int cartId) {
	this.cartId = cartId;
}

public List<Item> getItem() {
	return item;
}
public void setItem(List<Item> item) {
	this.item = item;
}
public User getUser() {
	return user;
}
public void setUser(User user) {
	this.user = user;
}

  
}
