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
	ProductDaoImple prdlist=new ProductDaoImple();
	public Product getById(int id) {
		for(Product prd :prdlist)
			if(prd.getPid()==id)
				return prd;
		return null;
	}
}
