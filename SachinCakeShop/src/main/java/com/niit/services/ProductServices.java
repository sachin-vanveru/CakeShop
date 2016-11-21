package com.niit.services;
import com.niit.dao.*;
import com.niit.models.*;
import java.util.List;;
public class ProductServices {
	ProductDaoImple productdao=new ProductDaoImple();
	
	public List<Product>getAllProduct()
	{
		return productdao.getAllProduct();
	}
	public Product getById(int id)
	{
		return productdao.getById(id);
	}
	}
