package com.niit.dao;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.models.Order;

@Repository
public class OrderDaoImpl implements OrderDao {

	@Autowired
	SessionFactory sessionFactory;
	@Override
	@Transactional
	public void addOrder(Order o) {
		Session session=sessionFactory.openSession();
		session.save(o);
		session.close();
		
		
	}

}
