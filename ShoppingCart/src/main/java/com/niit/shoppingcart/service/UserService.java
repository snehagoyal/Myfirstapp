package com.niit.shoppingcart.service;

import com.niit.shoppingcart.model.User;

public interface UserService {
public 	void addUser(User u);
public boolean validate(String uname, String password);

}
