package com.niit.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping(value="/")
	public String home()
	{
		return "index";
	}

	@RequestMapping(value="/contact_us")
	public String contact_us()
	{
		return "Contact_us";
	}
	@RequestMapping(value="/About_us")
	public String About_us()
	{
		return "About_US";
	}
	
	@RequestMapping(value="/Register")
	public String Register()
	{
		return "Register";
	}
}