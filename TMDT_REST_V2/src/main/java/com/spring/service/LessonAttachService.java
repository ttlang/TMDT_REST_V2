package com.spring.service;

import java.util.Map;
import java.util.Optional;

import com.spring.domain.LessonAttach;

public interface LessonAttachService {

	/**
	 * get lesson attach by 
	 * @param page  current page begin with 1
	 * @param size number of record per page
	 * @param lessonID
	 * @return Map<String, Object> with two key (listOfResult, numberOfPage)
	 */
	public Map<String, Object> getLessonAttachByLessonIDWithPaging(int page, int size, String lessonID);
	
	/**
	 * get lesson attach by lesson attach ID
	 * @param lessonAttachID
	 * @return Optional
	 */
	public Optional<LessonAttach>getLessonAttachByLessonAttachID(int lessonAttachID);

}
