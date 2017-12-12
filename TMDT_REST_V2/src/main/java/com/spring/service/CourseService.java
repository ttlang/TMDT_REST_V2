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
	
	/**
	 * get course by topic id with paging
	 * @param page
	 * @param size
	 * @param TopicID 
	 * @return  Map<String, Object> with two key (listOfResult, numberOfPage)
	 */
	public Map<String, Object>getCourseByTopicIDWithPaging(int page,int size,String TopicID);
	
	/**
	 * update course status
	 * @param courseID
	 * @param newStatut
	 * @return
	 */
	public int updateCourseStatut(String courseID,int newStatut);
	/**
	 * check user is author of course
	 * @param accountID
	 * @param courseID
	 * @return true if is author
	 */
	public boolean isCourseAuthor(String accountID,String courseID);
}
