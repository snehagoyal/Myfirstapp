package com.niit.shoppingcart.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.model.Supplier;


import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Transactional
@Service("")
public class SupplierServiceImpl implements SupplierService {

	private SupplierDAO supplierDAO;

	public void setSupplierDAO(SupplierDAO supplierDAO) {
	this.supplierDAO = supplierDAO;
}
	
	public boolean save(Supplier s) {
		System.out.println("in service"+s.getAddress());
			return supplierDAO.save(s);
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
	public boolean delete(int s_id)
	{
		return supplierDAO.delete(s_id);

	}
	public Supplier getSupplierByID(int s_id)
	{
		return supplierDAO.getSupplierByID(s_id);
	}

}