package com.niit.dao;
import com.niit.models.Product;

import java.util.List;

public interface ProductDao {
	
   public	List<Product>getAllProduct();
   
   public Product getById(int id);
   public void addProduct(Product p);
   public void updateProduct(Product p);
   public void removeProduct(int id);
}
