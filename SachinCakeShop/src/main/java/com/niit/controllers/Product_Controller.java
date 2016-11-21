package com.niit.controllers;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.niit.models.*;
import com.niit.services.*;

@Controller
public class Product_Controller {
  ProductServices productservices= new ProductServices();
	
  @RequestMapping (value="/product")
	
	public @ResponseBody List<Product> getAllData()
	{
		List<Product> productList= productservices.getAllProduct();
		
		return productList;
	}
  
  @RequestMapping(value="/disp")
  public ModelAndView display(@RequestParam(name="id") String prdid){
	  int pid =Integer.parseInt(prdid);
	  Product p =productservices.getById(pid);
	  ModelAndView mv = new ModelAndView("displayProduct","product",p);
	  return mv;
	  
  }
}
