package com.sneha.shoppingcartbe.dao;

import java.util.List;

import com.sneha.shoppingcartbe.model.Category;

public interface CategoryDAO {
	public boolean save(Category c);
	public List<Category> list();
	public boolean update(Category c);
	public boolean delete(Category c);
	public boolean delete(String id);
	public Category getCategoryByID(String id);


}
