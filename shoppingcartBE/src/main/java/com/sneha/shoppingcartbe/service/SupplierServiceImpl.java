package com.sneha.shoppingcartbe.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sneha.shoppingcartbe.dao.SupplierDAO;
import com.sneha.shoppingcartbe.model.Supplier;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Transactional
@Service("supplierService")
public class SupplierServiceImpl implements SupplierService {

	@Autowired
	private SupplierDAO supplierDAO;

	
	
	public boolean persist(Supplier s) {
		System.out.println("in service"+s.getAddress());
			return supplierDAO.persist(s);
	}
	public 	List<Supplier> list()
	{
		return supplierDAO.list();
	}
	public boolean update(Supplier s)
	{
		return supplierDAO.update(s);

	}
	
	public boolean delete(Supplier s)
	{
		return supplierDAO.delete(s);
		

	}
	public boolean delete(int id)
	{
		return supplierDAO.delete(id);

	}
	public Supplier getSupplierByID(int id)
	{
		return supplierDAO.getSupplierByID(id);
	}

}