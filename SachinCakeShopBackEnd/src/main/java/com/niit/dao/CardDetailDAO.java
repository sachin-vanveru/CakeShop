package com.niit.dao;
import java.io.Serializable;
import java.security.Principal;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.models.CardDetails;
import com.niit.models.Customer;
import com.niit.models.Order;



@Repository
public class CardDetailDAO implements Serializable {

	 @Autowired
	    private SessionFactory sessionFactory;

	    public void addCardDetail(CardDetails cardDetail, Principal p) {
	        Session session = sessionFactory.openSession();
	        Transaction tx = session.beginTransaction();
	       System.out.println("checkingout...");
	        Query query = session.createQuery("from Customer where username = ?");
	        query.setString(0, p.getName());
	        Customer c= (Customer) query.uniqueResult();
	        cardDetail.setUsersDetail(c);
	        cardDetail.setCart(c.getCart());
	        session.saveOrUpdate(cardDetail);
	        Order co = new Order();
	        co.setUsersDetail(c);
	        co.setShippingAddress(c.getShippingAddress());
	        co.setCart(c.getCart());
	        session.save(co);
	        tx.commit();
	        session.flush();
	        session.close();
	    }
}