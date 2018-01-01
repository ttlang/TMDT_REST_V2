package com.spring.service.imp;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.domain.Lesson;
import com.spring.repository.LessonRepository;
import com.spring.service.LessonService;

@Service
public class LessonServiceImp implements LessonService {
	@Autowired
	private LessonRepository lessonRepository;

	@Override
	public Optional<Lesson> getLessonByLessonID(String lessonID) {
		return lessonRepository.getLessonByLessonID(lessonID);
	}

	@Override
	public List<Lesson> getAllLessonRelate(String lessonID) {
		return this.lessonRepository.getAllLessonRelate(lessonID);
	}

	@Override
<<<<<<< HEAD
	public Optional<Lesson> getFirstLessonInCourse(String courseID) {
		return this.lessonRepository.getFirstLessonInCourse(courseID);
	}

=======
	public String getCourseIDByLessonID(String lessonID) {
		return this.lessonRepository.getCourseIDByLessonID(lessonID);
	}
>>>>>>> master
}
