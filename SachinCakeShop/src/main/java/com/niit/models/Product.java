package com.niit.models;

public class Product {
	private int pid;
	private String pname;
	private double price;
	private int qty;
	private String desc;
	private String i_name;
	
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	
	public int getQty() {
		return qty;
	}
	public void setQty(int qty) {
		this.qty = qty;
	}
	
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	
	public String getI_name() {
		return i_name;
	}
	public void setI_name(String i_name) {
		this.i_name = i_name;
	}
     public Product()
     {
    	 
     }
	public Product(int pid, String pname,double price,int qty,String desc,String i_name)
	{
		this.pid=pid;
		this.pname=pname;
		this.price=price;
		this.qty=qty;
		this.desc=desc;
		this.i_name=i_name;
	}
}
