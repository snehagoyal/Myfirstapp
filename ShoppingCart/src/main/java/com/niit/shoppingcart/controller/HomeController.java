
package com.niit.shoppingcart.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.service.CategoryService;
import com.niit.shoppingcart.service.ProductService;
import com.niit.shoppingcart.service.SupplierService;

@Controller

public class HomeController {

@Autowired
private CategoryService categoryService;

@Autowired
private SupplierService supplierService;

@Autowired
private ProductService productService;

	
@Autowired
private HttpSession session;
	
@RequestMapping("/")
public ModelAndView showStartPage1() {
	ModelAndView mv = new ModelAndView("/home");

	session.setAttribute("productList", productService.list());
	session.setAttribute("categoryList",categoryService.list() );
	session.setAttribute("supplierList",supplierService.list() );

	return mv;
}
	
	
	
@RequestMapping("/login")
public ModelAndView showLoginPage() {
	ModelAndView mv= new ModelAndView("/Login");
	mv.addObject("LoginClicked" ,"true");
			return mv;

	
}



@RequestMapping("/logout")
public ModelAndView showLogoutPage()
{
	ModelAndView mv = new ModelAndView("/home");
		session.invalidate();
	return mv;
	
}


@RequestMapping("/cover")
public String coverpage(){
	return "/cover";
}

}
