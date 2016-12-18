package com.niit.models;

public class Item {
  private int itemId;
  private int qunitity;
  private Product product;
  private double itemTotal;
  
  public int getItemId() {
	return itemId;
}
  public void setItemId(int itemId) {
	this.itemId = itemId;
}
  
public int getQunitity() {
	return qunitity;
}
public void setQunitity(int qunitity) {
	this.qunitity = qunitity;
}

public Product getProduct() {
	return product;
}
public void setProduct(Product product) {
	this.product = product;
}

public double getItemTotal() {
	return itemTotal;
}
public void setItemTotal(double itemTotal) {
	this.itemTotal = itemTotal;
}


  
}
