package com.spring;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.spring.service.CourseService;
import com.spring.service.LessonService;

@RunWith(SpringRunner.class)
@SpringBootTest
public class LessonTest {
	@Autowired
	private LessonService lessonService;
	@Autowired
	private  CourseService courseService;

	@Test
	public void  testGetFirstLessonInCourse() {
		 System.out.println(lessonService.getFirstLessonInCourse("KH3"));
	}
	@Test
	public void  testGetListFeatured() {
		 System.out.println(courseService.getListCoursesFeatured(1, 4));
	}
}
