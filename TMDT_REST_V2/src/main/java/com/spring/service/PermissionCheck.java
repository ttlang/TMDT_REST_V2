package com.spring.service;

public interface PermissionCheck {
	
	public boolean isCourseAuthor(String accountID,String courseID);
	
	public boolean isRegisteredCourse(String userID,String courseID);
}
