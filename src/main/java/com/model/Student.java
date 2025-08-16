package com.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="student")
public class Student {

	@Id
	private int id;
	private String name;
	private int english;
	private int hindi;
	private int maths;
	private int computer;
	private int total;
	private double average;
	private double percentage;
	
	//No-args Constructor
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Student(int id, String name,int english, int hindi, int maths, int computer) {
		super();
		this.id = id;
		this.name = name;
		this.english = english;
		this.hindi = hindi;
		this.maths = maths;
		this.computer = computer;
	}

	//getter and setter
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getEnglish() {
		return english;
	}
	public void setEnglish(int english) {
		this.english = english;
	}
	public int getHindi() {
		return hindi;
	}
	public void setHindi(int hindi) {
		this.hindi = hindi;
	}
	public int getMaths() {
		return maths;
	}
	public void setMaths(int maths) {
		this.maths = maths;
	}
	public int getComputer() {
		return computer;
	}
	public void setComputer(int computer) {
		this.computer = computer;
	}
	public int getTotal() {
        return english + maths + hindi + computer;
    }

    public double getAverage() {
        return getTotal() / 4.0;
    }

    public double getPercentage() {
        return (getTotal() / 400.0) * 100;
    }

	@Override
	public String toString() {
		return "Student [id=" + id + ", name=" + name + ", english=" + english + ", hindi=" + hindi + ", maths=" + maths
				+ ", computer=" + computer + "]";
	}
	
}
