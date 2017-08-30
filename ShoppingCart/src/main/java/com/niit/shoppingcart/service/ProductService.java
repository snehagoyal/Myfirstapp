package com.niit.shoppingcart.service;

import java.util.List;

import com.niit.shoppingcart.model.Product;


public interface ProductService {
	public boolean save(Product p);
	public List<Product> list();
	public boolean update(Product p);
	public boolean delete(Product p);
	public boolean delete( int id);
	public Product getProductByID(int id);

}
