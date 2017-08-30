package com.niit.shoppingcart.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingcart.dao.ProductDAO;
import com.niit.shoppingcart.model.Product;

@Service
public  class ProductServiceImpl implements ProductService{
	
private ProductDAO productDAO;
  	
public void setProductDAO(ProductDAO productDAO) 
{
		this.productDAO = productDAO;
}
@Transactional
public boolean save(Product p) {
	
	return productDAO.save(p);
}
@Transactional
public 	List<Product> list()
{
return productDAO.list();
}
@Transactional
public boolean update(Product p)
{
return productDAO.update(p);
}
@Transactional
public boolean delete(Product p)
{
	return productDAO.delete(p);
}

@Transactional
public boolean delete(int id)
{
return productDAO.delete(id);
}
@Transactional
public Product getProductByID(int id)
{
return productDAO.getProductByID(id);
}

}
