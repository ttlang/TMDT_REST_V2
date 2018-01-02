package com.spring.service.imp;

import static org.mockito.Matchers.contains;

import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.Course;
import com.spring.repository.imp.CourseRepositoryImp;
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

	@Override
	public boolean isRegisteredCourseFromLesson(String userID, String lessonID) {
		Optional<Course> course = courseService.getCourseByLessonID(lessonID);
		if (course.isPresent()) {
			return this.courseService.isRegisteredCourse(userID, course.get().getCourseID());
		} else
			return false;
	}
}
