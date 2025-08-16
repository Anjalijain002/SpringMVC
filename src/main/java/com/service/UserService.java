package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.model.User;
import com.repository.UserDao;

@Service
public class UserService {
	
	@Autowired
	private UserDao userDao;
	
	public int createUser(User user){
		return this.userDao.saveUser(user);		
	}
	
	
	//Student Method
	public User getStudent(String email, String password){
		return this.userDao.getUser(email, password);
	}
	


	
}
