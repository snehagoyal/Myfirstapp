package com.niit.shoppingcart.controller;


import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.model.Supplier;
import com.niit.shoppingcart.service.SupplierService;

@Controller
public class SupplierController {
	@Autowired
	private SupplierService supplierService;

	
	public void setSupplierService(SupplierService supplierService) {
	}

	@RequestMapping("/supplier")
	public ModelAndView showSupplierAdd() {
		ModelAndView mv = new ModelAndView("/admin/SupplierAdd");
		mv.addObject("aaddsupplier", new Supplier());
	mv.addObject("supplierList", supplierService.list()); 
		return mv;

	}

	@RequestMapping(value = "/supplieradd", method = RequestMethod.POST)
	public String insertSupplier(@ModelAttribute("aaddsupplier") Supplier s) {
		
		//ModelAndView mv=new ModelAndView("forward:/supplier");
	if(s.getId() == 0)
			this.supplierService.persist(s);
	else
		this.supplierService.update(s);
	
			return ("forward:/supplier");

	}

	/*@RequestMapping("/supplier")
	public ModelAndView showSupplierAdd() {
		ModelAndView mv = new ModelAndView("/addSupplier");
		mv.addObject("supplieradded", new Supplier());
		
		mv.addObject("supplierList", supplierService.list());

		return mv;

	}

	@RequestMapping(value = "/supplierAdd", method = RequestMethod.POST)
	public ModelAndView insertSupplier(@ModelAttribute("supplieradded") Supplier s) {
		
		ModelAndView mv=new ModelAndView("forward:/supplier");
		try {
			System.out.println(s.getId());
			System.out.println(s.getName());
			System.out.println(s.getAddress());
			System.out.println("going to service");
			this.supplierService.saveSupplier(s);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;

	}*/

	@RequestMapping("/delete_Supplier/{id}")
	public ModelAndView deleteSupplier(@PathVariable("id") int id, Model model)  {
		ModelAndView mv = new ModelAndView("redirect:/supplier");
	 this.supplierService.delete(id);
		return mv;
	}

	@RequestMapping("/edit_Supplier/{id}")
	public String editBrand(@PathVariable("id") int id, Model model) {

		model.addAttribute("aaddsupplier", supplierService.getSupplierByID(id));
		model.addAttribute("supplierList", this.supplierService.list());

		return "/admin/SupplierAdd";

	}
}
