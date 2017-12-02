package com.spring;

import static org.junit.Assert.assertEquals;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.spring.domain.Lesson;
import com.spring.repository.LessonRepository;

@RunWith(SpringRunner.class)
@SpringBootTest
public class LessonTest {
	@Autowired
	LessonRepository lessonRepository;
	@Test
	public void testGetLessonBychapterID() {
		List<Lesson> result  =lessonRepository.getLessonBychapterID("KH1CH1");
		assertEquals(5, result.size());
		result.forEach(e->{
			System.err.println(e);
		});
	}
}
