package com.niit.dao;

import java.security.Principal;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.niit.models.ShippingAddress;

public class ShippingDaoImpl implements ShippingDao {

	@Override
	public void addShippingAddress(ShippingAddress add, Principal p) {
		@Autowired
		private SessionFactory sessionFactory;
		
		public void addShippingAddress(ShippingAddress add, Principal p)
		{
		  Session	session =sessionFactory.openSession();
		  Transaction tx = session.beginTransaction();
		  
		  Query query = session.createQuery("from Customer where username = ?");
	      query.setString(0, p.getName());

	      Customer c= (Customer) query.uniqueResult();
	     
	      c.setShippingAddress(add);
	      add.setUsersDetail(c);
	      session.save(add);
	      session.update(c);
	      tx.commit();
	      session.close();

		}

		
		
	}

}
