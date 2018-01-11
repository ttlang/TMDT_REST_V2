package com.spring;


import static org.junit.Assert.assertEquals;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

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
	
	@Test
	public void testSearchCouseByName() {
		Map<String, Object> result = this.courseService.searchByCourseName(1, 2, "android");
		List<Course> listCourseResult = (List<Course>) result.get("listOfResult");
		assertEquals(2, listCourseResult.size());
	}

}
