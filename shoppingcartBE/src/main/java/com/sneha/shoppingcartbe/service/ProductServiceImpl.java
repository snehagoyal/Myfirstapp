package com.sneha.shoppingcartbe.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sneha.shoppingcartbe.dao.ProductDAO;
import com.sneha.shoppingcartbe.model.Product;


@Service("productService")
@Transactional
public  class ProductServiceImpl implements ProductService{

	@Autowired
private ProductDAO productDAO;
  	
public void setProductDAO(ProductDAO productDAO) 
{
		this.productDAO = productDAO;
}

public boolean save(Product p) {
	
	return productDAO.save(p);
}

public 	List<Product> list()
{
return productDAO.list();
}

public boolean update(Product p)
{
return productDAO.update(p);
}

public boolean delete(Product p)
{
	return productDAO.delete(p);
}

public boolean delete(int id)
{
return productDAO.delete(id);
}

public Product getProductByID(int id)
{
return productDAO.getProductByID(id);
}

}
