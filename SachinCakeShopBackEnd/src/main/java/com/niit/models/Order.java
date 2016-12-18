package com.niit.models;

public class Order {
  private int oId;
  private Customer customer; 

public Customer getCustomer() {
	return customer;
}

public void setCustomer(Customer customer) {
	this.customer = customer;
}

public int getoId() {
	return oId;
}

public void setoId(int oId) {
	this.oId = oId;
}
  
  
  
}
