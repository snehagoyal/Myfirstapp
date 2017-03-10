package com.niit.shoppingcart.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.model.User;
import com.niit.shoppingcart.service.UserService;

@Controller
public class UserController {

@Autowired(required=true)
	private UserService userService;

public void setUserService(UserService userService) {
	this.userService = userService;
}
	

	@RequestMapping
	public String home()
	{
		return "file";
	}

	
	
	@RequestMapping("/adduser")
	public ModelAndView showAddUserPage()
	{
		ModelAndView mv = new ModelAndView("/adduser");
		mv.addObject("user",new User());
		return mv;
	}

	@RequestMapping("/")
	public ModelAndView adduser1(@ModelAttribute("user") User u)
	{
		ModelAndView mv = new ModelAndView("/files");
		return mv;
	}

}
