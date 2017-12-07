package com.spring.service.imp;

import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.Course;
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

}
