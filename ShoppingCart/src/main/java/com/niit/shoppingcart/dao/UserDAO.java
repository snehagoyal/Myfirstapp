package com.niit.shoppingcart.dao;

import com.niit.shoppingcart.model.User;

public interface UserDAO {
public void addUser(User u);
public boolean validate(String uname, String password);
}
