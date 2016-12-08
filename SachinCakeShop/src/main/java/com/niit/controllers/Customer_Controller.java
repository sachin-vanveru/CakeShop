package com.niit.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Customer_Controller {
	
	@RequestMapping(value="Login")
	public String Login()
	{
		return "Login";
	}

}
