package com.spring;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.spring.service.CourseService;
import com.spring.service.GoogleDriveApiService;

@RunWith(SpringRunner.class)
@SpringBootTest
public class AppTest {
	@Autowired
	GoogleDriveApiService driveApiService;
	@Autowired
	private CourseService courseService;

	@Test
	public void testcoursesRegistedByUserID() {

		this.courseService.coursesRegistedByUserID(1, 1, "ND1").forEach((k, v) -> {
			System.out.println(k + " : " + v);
		});

	}

}
