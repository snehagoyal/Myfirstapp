package com.sneha.shoppingcartbe.dao;

import java.util.List;

import com.sneha.shoppingcartbe.model.Supplier;


public interface SupplierDAO {
	public boolean persist(Supplier s);
	public List<Supplier> list();
	public boolean update(Supplier s);
	public boolean delete(Supplier s);
	public boolean delete(int id);
	public Supplier getSupplierByID( int id);
}
