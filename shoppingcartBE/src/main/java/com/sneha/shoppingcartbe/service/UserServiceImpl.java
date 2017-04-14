package com.sneha.shoppingcartbe.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sneha.shoppingcartbe.dao.UserDAO;
import com.sneha.shoppingcartbe.model.User;

@Service("userService")
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDAO userDao;

@Transactional
public void addUser(User u) {
userDao.addUser(u);	
}

public boolean validate(String uname, String password) {
	return userDao.validate(uname, password);
}
	

}
