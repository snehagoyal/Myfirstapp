package com.sneha.shoppingcartfe.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

public class CartController {
	
	@RequestMapping("MyCart")
	public ModelAndView showCartpage()
	{
		ModelAndView mv = new ModelAndView("MyCart");
		return mv;
		
	}
	@RequestMapping("Card")
	public ModelAndView showCardpage()
	{
		ModelAndView mv = new ModelAndView("Card");
		return mv;
		
	}

}
