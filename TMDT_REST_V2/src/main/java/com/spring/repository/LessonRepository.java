package com.spring.repository;

import java.util.List;
import java.util.Optional;

import com.spring.domain.Lesson;

public interface LessonRepository {
	List<Lesson> getLessonBychapterID(String chapterID);
	
	Optional<Lesson>getLessonByLessonID(String lessonID);
	
	public List<Lesson>getLessonRelateInChapter(String lessonID);

}
