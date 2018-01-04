package com.spring;

import static org.junit.Assert.assertEquals;

import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.spring.service.AccessRoleService;
import com.spring.service.ChapterService;
import com.spring.service.CourseService;
import com.spring.service.PermissionCheck;

@RunWith(SpringRunner.class)
@SpringBootTest
public class AppTest {
	@Autowired
	ChapterService chapterService;
	@Autowired
	CourseService courseService;
	@Autowired
	PermissionCheck permissionCheck;
	@Autowired
	AccessRoleService accessRoleService;

	@Test
	public void testA() {
		System.err.println(chapterService.updateChapter(null, "hihi", "hihi", "KH6CH12"));
	}

	@Test
	public void testSearhByCourseName() {
		Map<String, Object> map = courseService.searchByCourseName(1, 2, "Lập");
		map.forEach((k, v) -> System.out.println("key: " + k + " value:" + v));
	}

	@Test
	public void testPermission() {
		// assertEquals(courseService.isRegisteredCourse("ND2", "KH3"), true);
		assertEquals(permissionCheck.isRegisteredCourseFromLesson("ND5", "KH3CH6BH11"), true);
	}

	@Test
	public void testGetCourseByLessonID() {
		assertEquals(courseService.getCourseByLessonID("KH3CH6BH11").isPresent(), true);
	}
	
	@Test
	public void testAddUserRole() {
		assertEquals(1, accessRoleService.addUserRole("ND3"));
	}
}
