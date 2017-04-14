package com.sneha.shoppingcartbe.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sneha.shoppingcartbe.dao.CategoryDAO;
import com.sneha.shoppingcartbe.model.Category;

@Transactional
@Service("categoryService")
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	private CategoryDAO categoryDAO;

	

	public boolean save(Category c) {

		return categoryDAO.save(c);
	}

	public List<Category> list() {
		return categoryDAO.list();
	}
	

	public boolean update(Category c) {
		return categoryDAO.update(c);

	}

	public boolean delete(Category c) {
		return categoryDAO.delete(c);

	}

	public boolean delete(String id) {
		// TODO Auto-generated method stub
		return categoryDAO.delete(id);
	}

	public Category getCategoryByID(String id) {
		return categoryDAO.getCategoryByID(id);

	}

}
