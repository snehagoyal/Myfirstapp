package com.sneha.shoppingcartbe.dao;

import com.sneha.shoppingcartbe.model.User;

public interface UserDAO {
public void addUser(User u);
public boolean validate(String uname, String password);
}
