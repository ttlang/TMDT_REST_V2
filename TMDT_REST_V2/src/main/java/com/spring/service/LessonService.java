package com.spring.service;

import java.util.Optional;

import com.spring.domain.Lesson;

public interface LessonService {
	Optional<Lesson>getLessonByLessonID(String lessonID);

}
