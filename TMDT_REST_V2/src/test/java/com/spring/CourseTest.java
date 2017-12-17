package com.spring;

import static org.junit.Assert.assertEquals;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.spring.repository.CourseRepository;

@SpringBootTest
@RunWith(SpringRunner.class)
public class CourseTest {
	@Autowired
	CourseRepository courseRepository;
	@Test
	public void testUpdateCourse() {
		int result = this.courseRepository.updateCourse("KH1zz","Lập trình thiết bị di động android",null, null, "CO", null, null, null, 1);
		assertEquals(3, result);
	}
	
	@Test
	public void testGetCourseByTopicIDWithPaging() {
		assertEquals(2, this.courseRepository.getCourseByTopicIDWithPaging(1, 4, "CD1").size());
		
	}
}
