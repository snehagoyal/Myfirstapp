package com.niit.shoppingcart.service;

import java.util.List;

import com.niit.shoppingcart.model.Category;

public interface CategoryService {
	public boolean save(Category c);
	public List<Category> list();
	public boolean update(Category c);
	public boolean delete(Category c);
	public boolean delete(int id);
	public Category getCategoryByID(int id);

}
