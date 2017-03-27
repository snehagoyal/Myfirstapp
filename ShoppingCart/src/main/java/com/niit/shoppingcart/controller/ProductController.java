package com.niit.shoppingcart.controller;

import java.io.FileOutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingcart.model.Category;
import com.niit.shoppingcart.model.Product;
import com.niit.shoppingcart.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	private ProductService productService;

	@Autowired(required = true)
	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

@RequestMapping("/product")
	public ModelAndView showProductPage() {
		ModelAndView mv = new ModelAndView("/admin/ProductAdd");
		mv.addObject("product", new Product());
		return mv;
	}
		
@RequestMapping("/productAdd") 
	public String insertProduct(@Valid @ModelAttribute("product") Product p, BindingResult result , Model model, HttpServletRequest request ){

		model.addAttribute("productList",productService.list());
		System.out.println("product");
		
		if(p.getId()==0)
		{
			this.productService.save(p);
				MultipartFile file = p.getImg();
				String filelocation = request.getSession().getServletContext().getRealPath("/resources/images/");
				System.out.println(filelocation);
				String filename = filelocation + "\\" + p.getId() + ".jpg";
				System.out.println(filename);
				try {
					byte b[] = file.getBytes();
					FileOutputStream fos = new FileOutputStream(filename);
					fos.write(b);
					fos.close();
				} catch (Exception e) {
				}
		}
	
		return "/admin/ProductAdd";
	}
	
	@RequestMapping("/delete_Product/{id}")
	public ModelAndView deleteProduct(@PathVariable("id") int id)
	{
		ModelAndView mv = new ModelAndView("/admin/ProductAdd");
		boolean b=this.productService.delete(id);
		if(b){
			System.out.println("delete ho gaya");
		}
	    return mv;
	}	

	}

