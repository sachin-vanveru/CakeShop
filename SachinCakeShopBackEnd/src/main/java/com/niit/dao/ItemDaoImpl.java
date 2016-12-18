package com.niit.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.models.Item;

@Repository
public class ItemDaoImpl implements ItemDao {

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public void addItem(Item i) {
		Session session=sessionFactory.openSession();
		session.save(i);
		session.close();
		
	}

	@Override
	@Transactional
	public void editItem(Item i) {
	 Session session=sessionFactory.openSession();
	 session.saveOrUpdate(i);
	 session.flush();
	 session.close();
	}

	@Override
	@Transactional
	public void deleteItem(Item i) {
		Session session= sessionFactory.openSession();
		if(i!=null)
		{
			session.delete(i);
		}
		session.flush();
		session.close();
		
	}

	@Override
	@SuppressWarnings("unchecked")
	public List<Item> listitem() {
		Session session=sessionFactory.openSession();
		List<Item> iList=session.createQuery("from Item").list();
		session.close();
		return iList;
	}

}
