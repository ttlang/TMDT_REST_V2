package com.spring;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.spring.repository.ChapterRepository;
import com.spring.repository.LessonRepository;
import com.spring.service.LessonService;

@RunWith(SpringRunner.class)
@SpringBootTest
public class LessonTest {
	@Autowired
	LessonService lessonService;
	@Autowired
	ChapterRepository chapterRepository;
	@Autowired
	LessonRepository lessonRepository;

	@Test
	public void test() {
		System.err.println(chapterRepository.getChapterByCourseID("KH1"));
	}

	@Test
	public void testGetLessonByID() {
		System.out.println(lessonRepository.getLessonByLessonID("KH1CH1BH1"));
	}

}
