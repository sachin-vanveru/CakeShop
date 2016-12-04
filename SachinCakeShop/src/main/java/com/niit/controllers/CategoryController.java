package com.niit.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.niit.services.CatagoryServices;
import com.niit.models.Category;
@Controller
public class CategoryController {
		@Autowired
		private CatagoryServices categoryServices;
		
		@RequestMapping(value="/admin/addCategory", method=RequestMethod.GET)
		public ModelAndView addCategory()
		{
			Category c = new Category();
		ModelAndView mv= new ModelAndView("/admin/addCategory","category",c);
		return mv;
		}
		
		@RequestMapping(value="/admin/addCategory", method=RequestMethod.POST)
		public ModelAndView addCategory(@ModelAttribute(name="category") Category c)
		{
			categoryServices.addCategory(c);
			return new ModelAndView("/admin/addCategory","successMsg","Category Added Sucessfully");
		}
}
