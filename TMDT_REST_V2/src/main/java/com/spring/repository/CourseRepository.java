package com.spring.repository;

import java.util.Optional;

import com.spring.domain.Course;

public interface CourseRepository {
	public Optional<Course> getCourseByCourseID(String courseID);

}
