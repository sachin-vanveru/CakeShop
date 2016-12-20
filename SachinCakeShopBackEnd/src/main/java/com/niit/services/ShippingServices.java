package com.niit.services;

import java.io.Serializable;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.webflow.execution.RequestContext;

import com.niit.dao.ShippingDaoImpl;
import com.niit.models.ShippingAddress;

@Service
public class ShippingServices implements Serializable {
	@Autowired
	private ShippingDaoImpl shipDAO;
	public String addShippingAddress(ShippingAddress add, RequestContext context)
	{
		System.out.println(add);
		HttpServletRequest request = (HttpServletRequest )context.getExternalContext().getNativeRequest();  
		shipDAO.addShippingAddress(add, request.getUserPrincipal());
		return "success";
		
	}
}