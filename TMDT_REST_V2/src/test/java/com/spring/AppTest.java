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
import com.spring.service.CurrencyService;
import com.spring.service.GoogleDriveApiService;

@RunWith(SpringRunner.class)
@SpringBootTest
public class AppTest {
	@Autowired
	CurrencyService currencyService;

	@Autowired
	private CourseService courseService;

	@Test
	public void testCurrency() {
		System.err.println(this.currencyService.getRate("VND", "USD") * 100000);
	}

	@Test
	public void testNumberUserInCourse() {
		assertEquals(this.courseService.numberUserInCourse("KH3"), 1);
		assertEquals(this.courseService.numberUserInCourse("KH17"), 0);
	}
	@Test
	 public void testCure() {
		
	}
}
