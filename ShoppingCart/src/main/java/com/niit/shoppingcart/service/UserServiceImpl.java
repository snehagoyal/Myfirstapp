package com.niit.shoppingcart.service;

import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.User;

public class UserServiceImpl implements UserService {
	private UserDAO userDao;


	public void setUserDao(UserDAO userDao) {
		this.userDao = userDao;
	}
	
@Transactional
public void addUser(User u) {
	// TODO Auto-generated method stub
userDao.addUser(u);	
}
	

}
