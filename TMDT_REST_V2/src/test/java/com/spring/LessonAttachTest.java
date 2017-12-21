package com.spring;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.spring.repository.CourseRepository;

@RunWith(SpringRunner.class)
@SpringBootTest
public class LessonAttachTest {
	@Autowired
	CourseRepository courseRepository;
	@Test
	public void testGetAuthor() {
		System.err.println(courseRepository.getCourseByAuthorIDSortByView("ND1", "desc", 10).toString());
	}
	
}
