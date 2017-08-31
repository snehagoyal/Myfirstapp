
package com.sneha.shoppingcartbe.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sneha.shoppingcartbe.model.Category;
import com.sneha.shoppingcartbe.model.Product;

@Repository("categoryDAO")
public class CategoryDAOImpl implements CategoryDAO {

	@Autowired
	SessionFactory sessionFactory;

	

	public boolean save(Category c) {
		try {
		    c.setId(c.getName());
			sessionFactory.getCurrentSession().save(c);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	

	public List<Category> list() {
		System.out.println("In category dao");

		return sessionFactory.getCurrentSession().createQuery("from Category").list();
	}

	public boolean update(Category c) {
		try {

			sessionFactory.getCurrentSession().update(c);
			return true;
		} catch (Exception e) {

			e.printStackTrace();
			return false;
		}

	}

	public boolean delete(Category c) {
		try {
			sessionFactory.getCurrentSession().delete(c);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}

	public Category getCategoryByID(String id) {
		return  (Category) sessionFactory.getCurrentSession().get(Category.class, id);

	}

	public boolean delete(String id) {
		try {
			sessionFactory.getCurrentSession().delete(getCategoryByID(id));
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}

}
