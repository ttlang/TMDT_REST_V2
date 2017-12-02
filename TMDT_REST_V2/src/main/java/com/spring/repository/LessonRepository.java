package com.spring.repository;

import java.util.List;

import com.spring.domain.Lesson;

public interface LessonRepository {
	List<Lesson> getLessonBychapterID(String chapterID);

}
