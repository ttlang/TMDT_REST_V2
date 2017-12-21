package com.spring.service.imp;

import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.Course;
import com.spring.domain.custom.Author;
import com.spring.repository.CourseRepository;
import com.spring.service.CourseService;

@Service
public class CourseServiceImp implements CourseService {

	@Autowired
	private CourseRepository courseRepository;

	@Override
	public Optional<Course> getCourseByCourseID(String courseID) {
		return this.courseRepository.getCourseByCourseID(courseID);
	}

	@Override
	public Map<String, Object> getCourseWithPaging(int page, int size) {
		return this.courseRepository.getCourseWithPaging(page, size);
	}

	@Override
	public Map<String, Object> getCourseByTopicIDWithPaging(int page, int size, String TopicID) {
		return this.courseRepository.getCourseByTopicIDWithPaging(page, size, TopicID);
	}

	@Override
	public int updateCourseStatut(String courseID, int newStatut) {
		return this.courseRepository.updateCourseStatus(courseID, newStatut);
	}

	@Override
	public boolean isCourseAuthor(String accountID, String courseID) {
		Optional<Course> course = this.getCourseByCourseID(courseID);
		if (course.isPresent()) {
			if (course.get().getAuthor().getUserID().equals(accountID)) {
				return true;
			}
		}
		return false;
	}

	@Override
	public String createCourse(String courseTitle, String courseDescription, String author, Integer price,
			String courseTypeID, String topicID, String courseAvatar, String courseDetail) {
		return this.courseRepository.createCourse(courseTitle, courseDescription, author, price, courseTypeID, topicID,
				courseAvatar, courseDetail);
	}

	@Override
	public int updateCourse(String courseID, String courseTitle, String courseDescription, Integer price,
			String courseTypeID, String topicID, String courseAvatar, String courseDetail, Integer newStatus) {
		return this.courseRepository.updateCourse(courseID, courseTitle, courseDescription, price, courseTypeID,
				topicID, courseAvatar, courseDetail, newStatus);
	}

	@Override
	public Map<String, Object> getRelateCourse(int page, int size, String courseID) {
		return this.courseRepository.getRelateCourse(page, size, courseID);
	}

	@Override
	public Optional<Author> getAuthorInfo(String authorID) {
		return this.courseRepository.getAuthorInfo(authorID);
	}

}
