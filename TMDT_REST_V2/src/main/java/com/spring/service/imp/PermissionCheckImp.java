package com.spring.service.imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.service.CourseService;
import com.spring.service.PermissionCheck;

@Service
public class PermissionCheckImp implements PermissionCheck {
	@Autowired
	private CourseService courseService;

	@Override
	public boolean isCourseAuthor(String accountID, String courseID) {
		return this.courseService.isCourseAuthor(accountID, courseID);
	}

}
