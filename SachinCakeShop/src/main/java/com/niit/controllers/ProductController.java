package com.niit.controllers;
import java.util.List;
import com.niit.models.Product;
import com.niit.services.ProductServices;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.niit.models.Product;


@Controller
public class ProductController {
 
	@Autowired
	private ProductServices service;
	
	@RequestMapping(value = "/admin/addProduct", method = RequestMethod.GET)
	public ModelAndView addProduct() {
		return new ModelAndView("/admin/addProduct", "product", new Product());
	}

	@RequestMapping(value = "/admin/addProduct", method = RequestMethod.POST)
	public ModelAndView AddActionPage(HttpServletRequest request,@ModelAttribute("product") @Validated Product p, BindingResult result, Model model)
	   {
		System.out.println("adding...");
		if (result.hasErrors()) {
			System.out.println("Err:"+result.getFieldError().getRejectedValue());

			return new ModelAndView("Add");
		} else {
			p.setImage(p.getFile().getOriginalFilename());
			service.storeFile(p, request);
			service.addProduct(p);
			return new ModelAndView("View_All","msg","Product Added Sucessfully");
		}
	}
	
	@RequestMapping(value = "/admin/deleteProduct", method = RequestMethod.GET)
	public String DeletePage() {
		return "/admin/deleteProduct";
	}

	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public ModelAndView DeleteActionPage(@RequestParam("id") int id) {
		service.removeProduct(id);
		return new ModelAndView("View_All","msg","Product Deleted Sucessfully");
	}
	
	@RequestMapping(value = "/admin/updateProduct", method = RequestMethod.GET)
	public ModelAndView EditPage(@RequestParam("id") int id) {

		Product p = service.getById(id);

		return new ModelAndView("Edit", "product", p);
	}
	
	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public ModelAndView EditActionPage(HttpServletRequest request,@ModelAttribute("product") @Validated Product p, BindingResult result, Model model) {
		
		if (result.hasErrors()) {

			return new ModelAndView("Edit");
		} 
		else {
			System.out.println(p.getImage());
			if(!(p.getFile().isEmpty()))
			{
			p.setImage(p.getFile().getOriginalFilename());
			service.storeFile(p,request);
			}
			service.udateProduct(p);
			return new ModelAndView("ViewAll","msg","Product Updated Sucessfully");
		}

	}

	
}
