package com.niit.shoppingcart.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.User;

@Service
public class UserServiceImpl implements UserService {
	
	private UserDAO userDao;

	
	public void setUserDao(UserDAO userDao) {
		this.userDao = userDao;
	}
	
@Transactional
public void addUser(User u) {
userDao.addUser(u);	
}

public boolean validate(String uname, String password) {
	return userDao.validate(uname, password);
}
	

}
