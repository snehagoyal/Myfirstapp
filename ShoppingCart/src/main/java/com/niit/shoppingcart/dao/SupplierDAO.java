package com.niit.shoppingcart.dao;

import com.niit.shoppingcart.model.Supplier;


import java.util.List;


public interface SupplierDAO {
	public boolean persist(Supplier s);
	public List<Supplier> list();
	public boolean update(Supplier s);
	public boolean delete(Supplier s);
	public boolean delete(int id);
	public Supplier getSupplierByID( int id);
}
