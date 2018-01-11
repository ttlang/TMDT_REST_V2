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

import com.spring.domain.Course;
import com.spring.service.CourseService;
import com.spring.service.GoogleDriveApiService;

@RunWith(SpringRunner.class)
@SpringBootTest
public class AppTest {
	@Autowired
	GoogleDriveApiService driveApiService;
	@Autowired
	CourseService courseService;
	
	@Test
	public void test() {
		File file = new File("C:\\Users\\ttlang\\Downloads\\pic\\1483254.png");
		if(file.exists()) {
			try {
				com.google.api.services.drive.model.File a=	driveApiService.upLoadFile(file.getName(), file.getAbsolutePath(),"1uq3Fto8B34DuhNDPAR1hUn3mAbh2u6yT","image/jpg");
				System.err.println(a.toPrettyString());
			} catch (IOException e) {
				e.printStackTrace();
			}
		}else {
			System.err.println("file not found");
		}
		
	
	}
	
	@Test
	public void testSearchCouseByName() {
		Map<String, Object> result = this.courseService.searchByCourseName(1, 2, "android");
		List<Course> listCourseResult = (List<Course>) result.get("listOfResult");
		assertEquals(2, listCourseResult.size());
	}

}
