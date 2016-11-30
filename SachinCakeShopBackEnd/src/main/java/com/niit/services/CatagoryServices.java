package com.niit.services;

import org.springframework.beans.factory.annotation.Autowired;
import com.niit.dao.categoryDao;
import com.niit.models.*;
import com.niit.services.*;

@Service
public class CatagoryServices {	
	@Autowired 
    
	private categoryDao categorayDao;
	public void addCategory(Category c)
	{
		categoryDao.addCategory(c);
	}

  }

