package com.niit.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.dao.CategoryDao;
import com.niit.models.*;

@Service
public class CatagoryServices {	
	@Autowired 
    
	private CategoryDao categorayDao;
	public void addCategory(Category c)
	{
		categorayDao.addCategory(c);
	}

  }

