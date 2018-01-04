package com.spring.service;

import java.util.List;
import java.util.Optional;

import com.spring.domain.CourseRegister;

public interface CourseRegisterSerivce {
public List<CourseRegister> getListCourseRegisterByCourseID(String CourseID);
	
	public Optional<CourseRegister>getCourseRegisterByCourseRegisterID(int CourseID);

	public String createCourseRegisterByCourse(String courseID, String userID);
	
	public int deleteRegisterByCourse(int courseRegisterID);
}
