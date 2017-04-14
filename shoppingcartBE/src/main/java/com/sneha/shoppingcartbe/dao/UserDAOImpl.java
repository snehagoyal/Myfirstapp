package com.sneha.shoppingcartbe.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sneha.shoppingcartbe.model.Authorization;
import com.sneha.shoppingcartbe.model.User;

@Repository("userDao")
public class UserDAOImpl implements UserDAO {
	
	@Autowired
	SessionFactory sessionFactory;

	Session session;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	
	public void addUser(User u) {
		
		session = sessionFactory.getCurrentSession();
		Authorization auth=new Authorization();
		u.setId(u.getUname());
		auth.setRole("ROLE_USER");
		auth.setId(u.getId());
		u.setActive(true);
		session.persist(u);
		session.persist(auth);
		System.out.println("user register successfully="+u);
		
	}


	public boolean validate(String uname, String password) {
		session = sessionFactory.getCurrentSession();
		String hql= "from user where uname ='"+uname+"' and password='"+password+"'";
			//"	select * from user where uname= ' " s " ' and password= ' " s " ' ";
		if(session.createQuery(hql).uniqueResult() != null)
		{	
			return true;
		}
	return false;
	}
	

}