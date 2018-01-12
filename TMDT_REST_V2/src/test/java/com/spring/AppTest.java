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
	@Test
	public void testCurrency () {
		System.out.println(this.currencyService.getRate("VND", "USD"));;
	}

}
