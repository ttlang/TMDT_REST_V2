package com.spring;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;

import java.util.Optional;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.spring.domain.Course;
import com.spring.repository.CourseRepository;
import com.spring.service.CourseService;

@RunWith(SpringRunner.class)
@SpringBootTest
public class CourseTest {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(CourseTest.class);

	@Autowired
	CourseRepository courseRepository;
	@Autowired
	CourseService courseService;
	@Test
	public void testGetCourseByID() {
		Optional<Course> result = courseRepository.getCourseByCourseID("KH1");
		LOGGER.info(result.get().getAuthor().toString());
	}
	
	@Test
	public void testGetCourseByTopicIDWithPaging() {
		assertEquals(2, this.courseRepository.getCourseByTopicIDWithPaging(1, 4, "CD1").size());
	}
	@Test
	public void testUpdateCourseStatut() {
		assertEquals(1, this.courseRepository.updateCourseStatus("KH1", 1));
	}
	
	@Test
	public void testIsCourseAuthor() {
		assertFalse(this.courseService.isCourseAuthor("ND1", "KH9"));
	}
}
