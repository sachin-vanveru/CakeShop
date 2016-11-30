package com.niit.dao;

import javax.transaction.Transactional;

import org.h2.engine.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;


@Repository
public class CatagoryDaoImpl implements categoryDao {
  @Autowired
  private SessionFactory sessionFactory;
	@Transactional
	@Override
	public void addCategory() {
        Session session= sessionFactory.openSession();
        session.save(c);
        session.close();
	}

}
