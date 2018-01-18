package com.spring;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.spring.service.CourseService;

@RunWith(SpringRunner.class)
@SpringBootTest
public class AppTest {
	@Autowired
	private CourseService courseService;

	@Test
	public void testSearch() {
		this.courseService.searchByCourseName(1, 2, "C#").forEach((k, v) -> {
			System.out.println(k + ": " + v);
		});
	}

}
