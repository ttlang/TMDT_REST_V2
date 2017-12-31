package com.spring.service;

import java.util.List;
import java.util.Optional;

import com.spring.domain.Lesson;

public interface LessonService {
	Optional<Lesson>getLessonByLessonID(String lessonID);
	
	public List<Lesson> getAllLessonRelate(String lessonID);
	
	public String getCourseIDByLessonID(String lessonID);

}
