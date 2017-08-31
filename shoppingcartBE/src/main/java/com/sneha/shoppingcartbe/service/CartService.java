package com.sneha.shoppingcartbe.service;

public interface CartService {
	public boolean save(Cart c1);
	public boolean update(Cart c1);
	public boolean removecart(Cart c1);
	public List<Cart> list();
	
	

}
