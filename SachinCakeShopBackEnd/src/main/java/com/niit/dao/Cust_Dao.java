package com.niit.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.hibernate.Transaction;
import com.niit.models.Customer;
import com.niit.models.User;
import com.niit.models.UserRole;

@Repository
public class Cust_Dao implements CustDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional
	@Override
	public void addcustomer(Customer c) {
			Session session = sessionFactory.openSession();
			Transaction tx = session.beginTransaction();
			session.save(c);
			User u = new User();
			u.setCust(c);
			u.setU_name();
			u.setPassword();
			UserRole ur = new UserRole();
			ur.setAuthority("ROLE_USER");
			ur.setCust(c.getCustId());
			session.save(ur);
			tx.commit();
			session.close();
		
	}

	@Override
	public Customer getCustomerById(int id) {
		Session session=sessionFactory.openSession();
		Customer p = (Customer) session.load(Customer.class, new Integer(id));
		session.close();
		return p;
	}

	@Override
	public List<Customer> getAllUsers() {
		 Session session = sessionFactory.openSession();
	        Query query = session.createQuery("from Customer");
	        @SuppressWarnings("unchecked")
			List<Customer> usersDetail = query.list();

	        return usersDetail;
	}

	@Override
	public Customer getUserByUsername(String username) {
		 Session session = sessionFactory.openSession();
	        
	        Query query = session.createQuery("from Customer where username = ?");
	        query.setString(0, username);

	        return (Customer) query.uniqueResult();
	    }
}
