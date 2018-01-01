package com.spring;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.spring.repository.WatchLaterRepository;

@RunWith(SpringRunner.class)
@SpringBootTest
public class AppTest {
	@Autowired
	WatchLaterRepository watchLaterRepository;
	@Test
	public void testGetListCourseRegisterByCourseID() {
		System.err.println(watchLaterRepository.insertWatchLater("ND2", "KH2"));
	}
}
