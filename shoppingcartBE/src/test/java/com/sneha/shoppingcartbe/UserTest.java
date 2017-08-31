package com.sneha.shoppingcartbe;
import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.sneha.shoppingcartbe.dao.UserDAO;
import com.sneha.shoppingcartbe.model.User;


public class UserTest {
	private static AnnotationConfigApplicationContext context;
	private static UserDAO userDao;
	private User user;
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.sneha.shoppingcartbe");
		context.refresh();
		userDao=(UserDAO)context.getBean("userDao");
	}
	
	@Test
	public void testAddUser()
	{
		user=new User();
		user.setActive(true);
		user.setUname("sneha");
		user.setContact("+919813055385");
		user.setPassword("sneha");
		equals("Successfully added a user inside the table ");
	}
	
	
	
	


}

