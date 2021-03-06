package com.sneha.shoppingcartfe.controller;

import javax.servlet.http.HttpServletRequest;

import org.dom4j.rule.Mode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.sneha.shoppingcartbe.model.Category;
import com.sneha.shoppingcartbe.model.Product;
import com.sneha.shoppingcartbe.service.CategoryService;
import com.sneha.shoppingcartbe.service.ProductService;

@Controller
public class CategoryController {

	@Autowired
	private CategoryService categoryService;

	
	@RequestMapping("/category")
	public ModelAndView showCategoryPage() {
		ModelAndView mv = new ModelAndView("/admin/CategoryAdd");
		mv.addObject("category", new Category());
		mv.addObject("categoryList", categoryService.list());

		return mv;
	}

	@RequestMapping("/categoryAdd")
	public String insertCategory(@ModelAttribute("category") Category c, Model model) {

		System.out.println(c.getId());
		if(c.getId()==null ||c.getId().isEmpty() )
			this.categoryService.save(c);
		else{
			System.out.println("update");
			this.categoryService.update(c);
		}
		
		return "forward:/category";
	}

	@RequestMapping("/delete_Category/{id}")
	public ModelAndView deleteCategory(@PathVariable("id") String id) {
		System.out.println("DELETE");		
		ModelAndView mv = new ModelAndView("forward:/category");
		this.categoryService.delete(id);
		return mv;
	}

	@RequestMapping("/edit_Category/{id}")
	public String editCategory(@PathVariable("id") String id, Model model) {
		model.addAttribute("category", categoryService.getCategoryByID(id));
		model.addAttribute("categoryList", this.categoryService.list());

		return "/admin/CategoryAdd";
	}

}
