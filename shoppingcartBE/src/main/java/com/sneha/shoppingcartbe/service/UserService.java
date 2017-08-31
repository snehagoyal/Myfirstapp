package com.sneha.shoppingcartbe.service;

import com.sneha.shoppingcartbe.model.User;

public interface UserService {
public 	void addUser(User u);
public boolean validate(String uname, String password);

}
