package com.spring.repository;

import java.util.Map;
import java.util.Optional;

import com.spring.domain.Course;

public interface CourseRepository {
	public Optional<Course> getCourseByCourseID(String courseID);

	public Map<String, Object> getCourseWithPaging(int page, int size);

	public Map<String, Object> getCourseByTopicIDWithPaging(int page, int size, String TopicID);

	public int updateCourseStatus(String courseID, int newStatus);

	public String createCourse(String courseTitle, String courseDescription, String author, Integer price,
			String courseTypeID, String topicID, String courseAvatar, String courseDetail);

	public int updateCourse(String courseID, String courseTitle, String courseDescription, Integer price,
			String courseTypeID, String topicID, String courseAvatar, String courseDetail, Integer newStatus);


}
