package com.spring;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

<<<<<<< HEAD
import com.spring.service.ChapterService;
import com.spring.service.CourseService;
import com.spring.service.LessonService;
import com.spring.service.PermissionCheck;
=======
import com.spring.service.LessonAttachService;
>>>>>>> master

@RunWith(SpringRunner.class)
@SpringBootTest
public class AppTest {
	@Autowired
<<<<<<< HEAD
	ChapterService chapterService;
	@Autowired
	CourseService courseService;
	@Autowired
	PermissionCheck permissionCheck;
	@Autowired
	LessonService lessonService ;

=======
	LessonAttachService lessonAttachService;
	
>>>>>>> master
	@Test
	public void testA() {
	
	}
	 @Test
	 public void testLessonIsNonCommercial() {
		 assertEquals(lessonService.lessonIsNonCommercial("KH3CH6BH11"), true);
	 }
}
