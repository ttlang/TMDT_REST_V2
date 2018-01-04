package com.spring;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.spring.service.LessonAttachService;

@RunWith(SpringRunner.class)
@SpringBootTest
public class AppTest {
	@Autowired
	LessonAttachService lessonAttachService;
	
	@Test
	public void testA() {
	int a=	lessonAttachService.getLessonAttachByLessonID("KH5CH10BH22").size();
		System.err.println(a);
	}
}
