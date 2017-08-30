package com.niit.shoppingcart.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {
	
	@RequestMapping("/adminHome")
	public ModelAndView showAdminPage(){
		
		ModelAndView mv= new ModelAndView("/admin/AdminHome");
		return mv;
	}	

}
