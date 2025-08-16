package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.model.User;
import com.service.UserService;

@Controller
public class LoginController {
	
	@Autowired
	private UserService userService;
		
	@RequestMapping("/")
	public  String  index(){

		 return "index";
	}

	@RequestMapping("/register")
	public String home(){
		
		System.out.println("Controller");
		return "register";
	}

	@RequestMapping("/add1")
	public String add(){
		
		System.out.println("Controller");
		return "add";
		
	}
	@RequestMapping("/update")
	public String update(){
		
		System.out.println("Controller");
		return "update";
		
	}
	@RequestMapping("/delete")
	public String delete(){
		
		System.out.println("Controller");
		return "delete";
		
	}
	@RequestMapping("/search")
	public String search(){
		
		System.out.println("Controller");
		return "search";
		
	}
	@RequestMapping("/searchStudentById")
	public String searchStudent(){
		
		System.out.println("Controller");
		return "searchStudentById";
		
	}
	
	@RequestMapping("/studentView")
	public String returnHomePage(){
		
		System.out.println("Controller");
		return "studentView";
		
	}
	
	@RequestMapping("/processform")
	public String success(@ModelAttribute User user, Model model){
		this.userService.createUser(user);
		
		return "success";
	}

}
