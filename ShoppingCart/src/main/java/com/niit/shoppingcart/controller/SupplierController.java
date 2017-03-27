package com.niit.shoppingcart.controller;

import javax.servlet.http.HttpServletRequest;
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

	private SupplierService supplierService;

	@Autowired(required = true)
	public void setSupplierService(SupplierService supplierService) {
	}

	@RequestMapping("/supplier")
	public ModelAndView showSupplierAdd() {
		ModelAndView mv = new ModelAndView("/admin/SupplierAdd");
		mv.addObject("supplieradded", new Supplier());
		//mv.addObject("supplierList", supplierService.list());

		return mv;

	}

	@RequestMapping(value = "/supplierAdd", method = RequestMethod.POST)
	public ModelAndView insertSupplier(@Valid @ModelAttribute("supplieradded") Supplier s) {
		
		ModelAndView mv=new ModelAndView("forward:/supplier");
		try {
			System.out.println(s.getId());
			System.out.println(s.getName());
			System.out.println(s.getAddress());
			this.supplierService.save(s);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return mv;

	}

	@RequestMapping("/delete_Supplier/{id}")
	public ModelAndView deleteSupplier(@PathVariable("id") int id, Model model) throws Exception {
		ModelAndView mv = new ModelAndView("/ admin/SupplierAdd");
		boolean b = this.supplierService.delete(id);
		if (b) {
			System.out.println("delete ho gaya");
		}
		return mv;
	}

}
