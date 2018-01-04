package com.spring;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.spring.service.ChapterService;
import com.spring.service.UserService;

@RunWith(SpringRunner.class)
@SpringBootTest
public class AppTest {
	@Autowired
	ChapterService chapterService;
	UserService userService;
	@Test
	public void testA() {
		System.err.println(chapterService.updateChapter(null, "hihi","hihi", "KH6CH12"));
	}
	
	
}
