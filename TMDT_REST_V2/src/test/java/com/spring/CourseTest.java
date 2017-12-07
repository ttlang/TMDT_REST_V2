package com.spring;

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

@RunWith(SpringRunner.class)
@SpringBootTest
public class CourseTest {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(CourseTest.class);

	@Autowired
	CourseRepository courseRepository;
	@Test
	public void testGetCourseByID() {
		Optional<Course> result = courseRepository.getCourseByCourseID("KH1");
		LOGGER.info(result.get().getAuthor().toString());
	}
}
