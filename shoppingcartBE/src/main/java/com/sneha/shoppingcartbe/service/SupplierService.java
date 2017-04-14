package com.sneha.shoppingcartbe.service;

import java.util.List;

import com.sneha.shoppingcartbe.model.Supplier;


public interface SupplierService {

	public boolean persist(Supplier s);
	public List<Supplier> list();
	public boolean update(Supplier s);
	public boolean delete(Supplier s);
	public boolean delete(int id);
	public Supplier getSupplierByID(int id);
	
	
}