package com.niit.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.niit.dao.Cust_Dao;
import com.niit.models.Customer;
@Service
public class Customer_Service {
	@Autowired
	private Cust_Dao cust;
	public void addCustomer(Customer c) {
	
		cust.addcustomer(c);
		
	}
	public Customer getCustomerById(int id) {
		return cust.getCustomerById(id);
	}
	 public List<Customer> getAllUsers() {
		 return cust.getAllUsers();
	 }
	  public Customer getUserByUsername (String username) {
		  return cust.getUserByUsername(username);
	  }
}
