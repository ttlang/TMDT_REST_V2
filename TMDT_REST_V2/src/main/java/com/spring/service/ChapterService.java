package com.spring.service;

import java.util.List;

import com.spring.domain.Chapter;

public interface ChapterService {
	public List<Chapter>getChapterByCourseID(String courseID);

}
