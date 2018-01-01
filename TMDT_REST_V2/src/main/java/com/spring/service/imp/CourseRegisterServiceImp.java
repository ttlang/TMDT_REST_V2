package com.spring.service.imp;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.CourseRegister;
import com.spring.repository.CourseRegisterRepository;
import com.spring.service.CourseRegisterSerivce;

@Service
public class CourseRegisterServiceImp implements CourseRegisterSerivce {
	@Autowired
	private CourseRegisterRepository courseRegisterRepository;

	@Override
	public List<CourseRegister> getListCourseRegisterByCourseID(String CourseID) {
		return this.courseRegisterRepository.getListCourseRegisterByCourseID(CourseID);
	}

	@Override
	public Optional<CourseRegister> getCourseRegisterByCourseRegisterID(int CourseID) {
		return this.courseRegisterRepository.getCourseRegisterByCourseRegisterID(CourseID);
	}

	@Override
	public String createCourseRegisterByCourse(String courseID, String userID) {
		return this.courseRegisterRepository.createCourseRegisterByCourse(courseID, userID);
	}

	@Override
	public int deleteRegisterByCourse(int courseRegisterID) {
		return this.courseRegisterRepository.deleteRegisterByCourse(courseRegisterID);
	}

}
