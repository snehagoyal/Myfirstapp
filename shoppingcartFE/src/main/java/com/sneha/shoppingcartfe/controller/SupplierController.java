package com.sneha.shoppingcartfe.controller;


import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sneha.shoppingcartbe.model.Supplier;
import com.sneha.shoppingcartbe.service.SupplierService;

@Controller
public class SupplierController {
	
	@Autowired
	private SupplierService supplierService;

	
	@RequestMapping("/supplier")
	public ModelAndView showSupplierAdd() {
		ModelAndView mv = new ModelAndView("/admin/SupplierAdd");
		mv.addObject("aaddsupplier", new Supplier());
	mv.addObject("supplierList", supplierService.list()); 
		return mv;

	}

	@RequestMapping(value = "/supplieradd", method = RequestMethod.POST)
	public String insertSupplier(@ModelAttribute("aaddsupplier") Supplier s) {
		
		System.out.println(s.getId());
	if(s.getId() == 0)
			this.supplierService.persist(s);
	else
		this.supplierService.update(s);
	
			return ("forward:/supplier");

	}

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
