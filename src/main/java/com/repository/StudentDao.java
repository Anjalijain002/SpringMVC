package com.repository;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.Student;
import com.model.User;

@Repository
public class StudentDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public int saveStudent(Student student){
		this.hibernateTemplate.save(student);
		int id=(Integer)hibernateTemplate.save(student);
		return 1;
		
	}
	
	@Transactional
	public int updateStudent(Student student){
		this.hibernateTemplate.update(student);
		return 1;
		
	}
	// New method to get a single student by roll number
	public Student getStudentByRollNumber(int id) {
		String hql = "FROM Student WHERE id = ?0";
		List<Student> students = (List<Student>) hibernateTemplate.find(hql, id);
		return students.isEmpty() ? null : students.get(0);
	}
	@Transactional
	public int deleteStudent(Student student){
		this.hibernateTemplate.delete(student);
		return 1;
	}
	
	@Transactional
	public Student searchById(int studentId){
	return this.hibernateTemplate.get(Student.class, studentId);
		
	}
	
	@Transactional
	public List<Student> getAllStudents(){
		return this.hibernateTemplate.loadAll(Student.class);
	}
	
	
}
