package com.niit.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.SachinCakeShopBackEnd.*;
@Controller
public class CategoryController {
		@Autowired
		private CategoryServices categoryServices;
		
		@RequestMapping(value="/admin/addCategory", method=RequestMethod.GET);
		public ModelAndView addCategory()
		{
		ModelAndView mv= new ModelAndView("/admin/addCategory","category",c);
		return mv;
		}
		@RequestMapping(value="/admin/addCategory", method=RequestMethod.POST)
		public String addCategory(@ModelAttribute(name="category") Category c, Model m)
		{
			categoryServices.addCategory(c);
			return "addCategory";
		}
}
