package com.sneha.shoppingcartbe.dao;

import java.util.List;

import com.sneha.shoppingcartbe.model.Product;

public interface ProductDAO {
	public boolean save(Product p);
	public List<Product> list();
	public boolean update(Product p);
	public boolean delete(Product p);
	public boolean delete(int id);
	public Product getProductByID(int id);


}
