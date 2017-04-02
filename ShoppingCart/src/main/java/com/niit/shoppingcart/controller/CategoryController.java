package com.niit.shoppingcart.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.Product;
import com.niit.shoppingcart.service.CategoryService;
import com.niit.shoppingcart.service.ProductService;

@Controller
public class CategoryController {

	
	private CategoryService categoryService;

	@Autowired(required = true)
	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}

	

	@RequestMapping("/category")
	public ModelAndView showCategoryPage() {
		ModelAndView mv = new ModelAndView("/admin/CategoryAdd");
		mv.addObject("category", new Category());
		mv.addObject("categoryList", categoryService.list());
			
	
		return mv;
	}
	
	@RequestMapping("/categoryAdd")
	public ModelAndView insertCategory(@ModelAttribute("category") Category c, BindingResult result , Model model, HttpServletRequest request ){

		ModelAndView mv =new ModelAndView("forward:/category");
		this.categoryService.save(c);
		return mv;
	}
	@RequestMapping("/delete_Category/{id}")
	public ModelAndView deleteCategory(@PathVariable("id") int id)throws Exception
	{
		ModelAndView mv = new ModelAndView("forward:/Category");
		this.categoryService.delete(id);
	    return mv;
	}	
	@RequestMapping("/update_Category/{id}")
	public ModelAndView editCategory(@PathVariable("id") int id)
	{
		ModelAndView mv = new ModelAndView("forward:/Category");
		//this.categoryService.update(c);
	    return mv;
	}	

}


