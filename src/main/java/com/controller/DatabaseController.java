package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.model.Student;
import com.model.User;
import com.service.StudentService;
import com.service.UserService;

@Controller
public class DatabaseController {
	
	@Autowired
	StudentService studentService;
	
	@Autowired
	UserService userService;
	
	@RequestMapping(path="/login", method=RequestMethod.POST)
	public String  home(@RequestParam("email")String email, @RequestParam("password")
	String password,
	@RequestParam("role")String role, 
	Model model){
		if(role.equals("Admin")){
			if(email.equals("admin@gmail.com") && password.equals("admin")){
				this.userService.getStudent(email, password);
				return "home";
			}
		}
		else if(role.equals("Student")){
			if(email.equals(email) && password.equals(password)){
		       User user= userService.getStudent(email, password) ;
		       if(user!=null){
			   return "studentView";
		     }
			else{
				model.addAttribute("msg","This is Error");
				return "success";
			}}
		}
		return "";
	}
	
	@RequestMapping(path="/addstudent",method=RequestMethod.POST)
	public String addStudent(@ModelAttribute Student student, Model model){
	      this.studentService.createStudent(student);
	      return "update";
	}
	
	@RequestMapping(path="/update" , method=RequestMethod.POST)
	public String updateStudent(@ModelAttribute Student student , Model model){
		this.studentService.update(student);
		return "update";
	}
	
	@RequestMapping(path="/delete", method=RequestMethod.POST)
	public String deleteStudent(@ModelAttribute Student student, Model model){
		this.studentService.delete(student);
		return "delete";
	}
	
	@RequestMapping(path="/search", method=RequestMethod.POST)
	public String searchById(@RequestParam("id") int studentId ,Model model){
		
		Student student=studentService.getStudentById(studentId);
		model.addAttribute("student1", student);
		return "searchById";
	}
	
	
	//Student Search
	@RequestMapping(path="/searchStudent", method=RequestMethod.POST)
	public String studentSearchById(@RequestParam("id") int studentId ,Model model){
		
		Student student=studentService.getStudentById(studentId);
		model.addAttribute("student1", student);
		return "StudentResult";
	}
	
@RequestMapping(path="/allStudent")
	public String getAllStudent(Model model){
		 List<Student> student= studentService.getAllStudent();
		 model.addAttribute("students", student);
		 return "allStudent";
	}
	

}
