package com.sneha.shoppingcartbe.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sneha.shoppingcartbe.model.Product;

@Repository("productdao")
public class ProductDAOImpl implements ProductDAO {
	
	@Autowired
	SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	public boolean save(Product p) {
		try{
			sessionFactory.getCurrentSession().save(p);
			return true;
			}
			catch(Exception e)
			{
				e.printStackTrace();
				return false;
			}
	}
	public 	List<Product> list()
	{
		return	sessionFactory.getCurrentSession().createQuery("from Product").list();
	}
	public boolean update(Product p)
	{
		try{
		sessionFactory.getCurrentSession().update(p);
		return true;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}

	}
	
	public boolean delete(Product p)
	{
		try{
			sessionFactory.getCurrentSession().delete(p);
			return true;
			}
			catch(Exception e)
			{
				e.printStackTrace();
				return false;
			}

	}
	public boolean delete(int id)
	{
		try{
			sessionFactory.getCurrentSession().delete(getProductByID(id));
			return true;
			}
			catch(Exception e)
			{	System.out.println("Galat Kr Rha hai");
				e.printStackTrace();
				return false;
			}

	}
	public Product getProductByID(int id)
	{		
		  return  (Product)sessionFactory.getCurrentSession().createQuery("from Product where id = "+id).uniqueResult();

	}

}
