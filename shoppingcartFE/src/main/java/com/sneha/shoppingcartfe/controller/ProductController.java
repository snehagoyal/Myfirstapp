package com.sneha.shoppingcartfe.controller;

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

import com.sneha.shoppingcartbe.model.Category;
import com.sneha.shoppingcartbe.model.Product;
import com.sneha.shoppingcartbe.service.CategoryService;
import com.sneha.shoppingcartbe.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	private ProductService productService;

	@Autowired
	private CategoryService categoryService;

	
	@RequestMapping("/product")
	public ModelAndView showProductPage() {
		ModelAndView mv = new ModelAndView("/admin/ProductAdd");
		mv.addObject("categoryList", categoryService.list());
		mv.addObject("product", new Product());
		mv.addObject("productList", productService.list());
		return mv;
	}

	@RequestMapping("/productAdd")
	public String insertProduct(@ModelAttribute("product") Product p, BindingResult result, Model model,
			HttpServletRequest request) {

		model.addAttribute("productList", productService.list());
		System.out.println(" in product");

		if (p.getId() == 0) {
			this.productService.save(p);
			System.out.println("in product save method");
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
		} else {
			System.out.println("in product update method");
			this.productService.update(p);
		}

		return "forward:/product";

	}
	@RequestMapping("/product/{id}")
	public String productPage(@PathVariable("id") int id ,Model model){
		model.addAttribute( "product",productService.getProductByID(id));
		return("/ProductDetails");
	}
	

	@RequestMapping("/delete_Product/{id}")
	public String deleteProduct(@PathVariable("id") int id) {
		this.productService.delete(id);
		return "redirect:/product";
	}

	@RequestMapping("/edit_product/{id}")
	public String editProduct(@PathVariable("id") int id, Model model) {

		model.addAttribute("product", productService.getProductByID(id));
		System.out.println(id);
		model.addAttribute("productList", this.productService.list());

		return "/admin/ProductAdd";

	}

}
