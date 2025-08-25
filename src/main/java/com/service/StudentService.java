package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.model.Student;
import com.model.User;
import com.repository.StudentDao;

@Service
public class StudentService {
	@Autowired
	private StudentDao studentDao;
	
	public int createStudent(Student student){
		return this.studentDao.saveStudent(student);
	}
	
	public int update(Student student){
		return this.studentDao.updateStudent(student);
	}
	
	
	// New method to get a single student by roll number
	public Student getStudentByRollNumber(int id) {
		return this.studentDao.getStudentByRollNumber(id);
	}
	
	// New method to update a student
	public void updateStudent(Student student) {
		this.studentDao.updateStudent(student);
	}

	
	public int delete(Student student){
		return this.studentDao.deleteStudent(student);
	}
	
	 public Student getStudentById(int studentId) {
	        return studentDao.searchById(studentId);
	    }
	 public List<Student> getAllStudent() {
	        return studentDao.getAllStudents();
	    }

}
