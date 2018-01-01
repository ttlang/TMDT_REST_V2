package com.spring.domain;

import java.time.LocalDateTime;

import com.spring.domain.custom.UserInfo;

public class CourseRegister {
	private int courseRegisterID;
	 private Course course;
	 private UserInfo userRegister;
	 private LocalDateTime registerDate;
	
	public CourseRegister(int courseRegisterID, Course course, UserInfo userRegister, LocalDateTime registerDate) {
		super();
		this.courseRegisterID = courseRegisterID;
		this.course = course;
		this.userRegister = userRegister;
		this.registerDate = registerDate;
	}

	
	public CourseRegister() {
		super();
	}


	public int getCourseRegisterID() {
		return courseRegisterID;
	}


	public void setCourseRegisterID(int courseRegisterID) {
		this.courseRegisterID = courseRegisterID;
	}


	public Course getCourse() {
		return course;
	}


	public void setCourse(Course course) {
		this.course = course;
	}


	public UserInfo getUserRegister() {
		return userRegister;
	}


	public void setUserRegister(UserInfo userRegister) {
		this.userRegister = userRegister;
	}


	public LocalDateTime getRegisterDate() {
		return registerDate;
	}


	public void setRegisterDate(LocalDateTime registerDate) {
		this.registerDate = registerDate;
	}


	@Override
	public String toString() {
		return "CourseRegister [courseRegisterID=" + courseRegisterID + ", course=" + course + ", userRegister="
				+ userRegister + ", registerDate=" + registerDate + "]";
	}
	
	
}
