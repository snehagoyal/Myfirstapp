package com.niit.shoppingcart.dao;


import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.niit.shoppingcart.model.Supplier;

@Repository("supplierDAO")
public class SupplierDAOImpl implements SupplierDAO {

SessionFactory sessionFactory;
	
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	public boolean save(Supplier s) {
		try{
			sessionFactory.getCurrentSession().persist(s);
			return true;
			}
			catch(Exception e)
			{
				e.printStackTrace();
				return false;
			}
	}
	public 	List<Supplier> list()
	{
		return	sessionFactory.getCurrentSession().createQuery("from Supplier").list();
	}
	public boolean update(Supplier s)
	{
		try{
		sessionFactory.getCurrentSession().update(s);
		return true;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}

	}
	
	public boolean delete(Supplier s)
	{
		try{
			sessionFactory.getCurrentSession().delete(s);
			return true;
			}
			catch(Exception e)
			{
				e.printStackTrace();
				return false;
			}

	}
	public boolean delete(int s_id)
	{
		try{
			sessionFactory.getCurrentSession().delete(getSupplierByID(s_id));
			return true;
			}
			catch(Exception e)
			{	System.out.println("Galat Kr Rha hai");
				e.printStackTrace();
				return false;
			}

	}
	public Supplier getSupplierByID(int id)
	{		System.out.println("try hard");
		  return  (Supplier)sessionFactory.getCurrentSession().createQuery("from Supplier where id = '"+id + "'").uniqueResult();

	}
}