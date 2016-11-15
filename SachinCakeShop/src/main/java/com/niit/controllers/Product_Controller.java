package com.niit.controllers;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class Product_Controller {
	@RequestMapping (value="/view_all")
	public String View_All()
	{
		return "View_All";
	}
}
