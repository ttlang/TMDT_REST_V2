package com.spring.service;

import java.util.Map;
import java.util.Optional;

import com.spring.domain.Course;

public interface CourseService {
	public Optional<Course> getCourseByCourseID(String courseID);
	
	/**
	 * get topic with paging parameter 
	 * @param page current page begin with 1
	 * @param size number of record per page
	 * @return Map<String, Object> with two key (listOfResult, numberOfPage)
	 */
	public Map<String, Object> getCourseWithPaging(int page,int size);


}
