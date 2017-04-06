package com.niit.shoppingcart.service;

import com.niit.shoppingcart.model.Supplier;


import java.util.List;


public interface SupplierService {

	public boolean persist(Supplier s);
	public List<Supplier> list();
	public boolean update(Supplier s);
	public boolean delete(Supplier s);
	public boolean delete(int id);
	public Supplier getSupplierByID(int id);
	
	
}