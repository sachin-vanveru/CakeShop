package com.niit.dao;
import java.util.LinkedList;
import java.util.List;
import com.niit.models.*;
public class ProductDaoImple implements ProductDao {
	public static List<Product> prdlist=new LinkedList<>();
	public ProductDaoImple()
	{
		prdlist.add(new Product(101, "Sachin", 700, 10, "Choclate cake with vanila topping", "cake.jpg"));
		prdlist.add(new Product(102, "sarayana", 750, 10, "anniversary cake with micky mouse designe", "ann3.jpg"));
		prdlist.add(new Product(103, "sahal", 850, 10,"birthday cake with Strawberry" , "cake2.jpg"));
		prdlist.add(new Product(103, "Ashwini", 550, 10,"birthday cake" , "cake5.jpg"));
		prdlist.add(new Product(103, "Manali", 900, 10,"birthday cake with chocolate" , "birthday.jpg"));
		prdlist.add(new Product(103, "pratibha", 1850, 10,"Anniversary cake with photo designe" , "ann2.jpg"));
	}
	public	List<Product>getAllProduct()
	{
		return prdlist;
	}
	
	@Override
	public Product getById(int id) {
		
		for(Product prd :prdlist)
			if(prd.getPid()==id)
				return prd;
		return null;
	}

}
