package com.spring.service.imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.service.CommentService;
import com.spring.service.CourseService;
import com.spring.service.PermissionCheck;

@Service
public class PermissionCheckImp implements PermissionCheck {
	@Autowired
	private CourseService courseService;
	@Autowired
	private CommentService commentService;

	@Override
	public boolean isCourseAuthor(String accountID, String courseID) {
		return this.courseService.isCourseAuthor(accountID, courseID);
	}

	@Override
	public boolean isRegisteredCourse(String userID, String courseID) {
		return this.courseService.isRegisteredCourse(userID, courseID);
	}

	@Override
	public boolean canEditComment(int commentID, String userID) {
		return this.commentService.canEditComment(commentID, userID);
	}

}
