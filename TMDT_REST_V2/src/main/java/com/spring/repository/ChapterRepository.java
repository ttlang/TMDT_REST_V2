package com.spring.repository;

import java.util.List;

import com.spring.domain.Chapter;

public interface ChapterRepository {
	
	public List<Chapter>getChapterByCourseID(String courseID);
	
	

}
