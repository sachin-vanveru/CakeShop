package com.niit.dao;

import java.util.List;

import com.niit.models.Customer;

public interface CustDao {
	void addcustomer(Customer c);
	public Customer getCustomerById(int id);
	 public List<Customer> getAllUsers();
	 public Customer getUserByUsername (String username);
	 

}
