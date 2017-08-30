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

	@Autowired
	private UserService userService;

	@Autowired(required = true)
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@RequestMapping("/AddUser")
	public ModelAndView showAddUserPage() {
		ModelAndView mv = new ModelAndView("/AddUser");
		mv.addObject("user", new User());
		return mv;
	}
	@RequestMapping("/userAdd")
	public ModelAndView register(@ModelAttribute("user") User u)
	{
		ModelAndView mv=new ModelAndView("/home");
		userService.addUser(u);
		return mv;
	}
}
