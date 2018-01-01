package com.spring;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.spring.repository.LessonRepository;

@RunWith(SpringRunner.class)
@SpringBootTest
public class AppTest {
	@Autowired
	LessonRepository lessonRepository;
	@Test
	public void testA() {
		int a = lessonRepository.updateLesson("Thực hành", "abc", null, "KH6CH12BH28");
		System.err.println(a);
	}
}
