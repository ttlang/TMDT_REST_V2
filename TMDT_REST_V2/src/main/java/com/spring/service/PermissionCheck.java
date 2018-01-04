package com.spring.service;

public interface PermissionCheck {
	
	public boolean isCourseAuthor(String accountID,String courseID);
	
	public boolean isRegisteredCourse(String userID,String courseID);
	
	public boolean canEditComment(int commentID,String userID);

	public boolean isRegisteredCourseFromLesson(String userID, String lessonID);
}
