package com.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.User;

@Repository
public class UserDao {
	
	@Autowired
	public HibernateTemplate hibernateTemplate;
	
	@Transactional
	public int saveUser(User user){
		this.hibernateTemplate.save(user);
		int id=(Integer)this.hibernateTemplate.save(user);
		
		return 1000;
	}
	@Transactional
	public User getUser(String email, String password){
		String user= "FROM User WHERE email = ?0 AND password = ?1";
		List<User> users=(List<User>)hibernateTemplate.find(user, email, password);
		return users.isEmpty()? null : users.get(0);
		
	}
	
	

}
