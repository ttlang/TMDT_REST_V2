package com.spring.repository;

import java.util.List;
import java.util.Optional;

import com.spring.domain.Lesson;

public interface LessonRepository {
	List<Lesson> getLessonBychapterID(String chapterID);
	
	Optional<Lesson>getLessonByLessonID(String lessonID);
	
	public List<Lesson>getAllLessonRelate(String lessonID);
	
	public String getCourseIDByLessonID(String lessonID);
	
	public String insertLesson(String lessonTitle, String lessonContent, String chapterID);
	
	public int updateLesson(String lessonTitle, String lessonContent, String chapterID,String lessonID);

}
