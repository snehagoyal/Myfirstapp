package com.niit.shoppingcart.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

@Autowired
private HttpSession session;
	
	@RequestMapping("/")
	public ModelAndView showHomePage(){
		ModelAndView mv= new ModelAndView("/home");
		return mv;
		
	}

@RequestMapping("/login")
public ModelAndView showLoginPage() {
	ModelAndView mv= new ModelAndView("/home");
	mv.addObject("LoginClicked" ,"true");
			return mv;

	
}



@RequestMapping("/validate")
public ModelAndView validateCredentials(@RequestParam("userid")String id, @RequestParam("password")String pwd)
{
	ModelAndView mv =new ModelAndView("/home");
	
	if(id.equals("sneha") && pwd.equals("s@123") )
	{
		mv.addObject("successMessage", "Valid Credentials");
		session.setAttribute("loginMessage", id);
	}
	else
	{
		mv.addObject("errorMeassge","Invalid Credentials");
	}
	return mv;
}

@RequestMapping("/logout")
public ModelAndView showLogoutPage()
{
	ModelAndView mv = new ModelAndView("/home");
		session.invalidate();
	return mv;
	
}
}
