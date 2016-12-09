package com.niit.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.models.User;
import com.niit.services.Customer_Service;

@Controller
public class CustomerController {
	@Autowired
	private Customer_Service customerService;
	
	@RequestMapping(value="/Login")
	public String Login()
	{
		return "Login";
	}
	@RequestMapping(value="/Register" , method=RequestMethod.GET)
	public ModelAndView Register()
	{
		return new ModelAndView("Register","user", new User());
	}
	@RequestMapping(value="/Register" , method=RequestMethod.POST)
	public ModelAndView Register(@ModelAttribute("user")@Validated User c,BindingResult result,Model m)
	{
		if(result.hasErrors())
		{
			return new ModelAndView("Register");
		}
		else {
		customerService.addCustomer(c);
			
		}
		
		return new ModelAndView("Register","success", "Registered Sucessfully please login now...");
	}

}
