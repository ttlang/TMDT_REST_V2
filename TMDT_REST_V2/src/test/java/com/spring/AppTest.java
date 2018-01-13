package com.spring;


import static org.junit.Assert.assertEquals;

import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.spring.domain.TopicStatistics;
import com.spring.service.CourseService;
import com.spring.service.CurrencyService;
import com.spring.service.GoogleDriveApiService;
import com.spring.service.StatisticsService;

@RunWith(SpringRunner.class)
@SpringBootTest
public class AppTest {
	
	@Autowired
	GoogleDriveApiService driveApiService;
	@Autowired
	private CourseService courseService;
	@Autowired
	CurrencyService currencyService;
	@Autowired
	private StatisticsService statisticsService;
	
	@Test
	public void testcoursesRegistedByUserID() {

		this.courseService.coursesRegistedByUserID(1, 1, "ND1").forEach((k, v) -> {
			System.out.println(k + " : " + v);
		});
	}
	
	@Test
	public void testCurrency () {
		assertEquals(0.000044, this.currencyService.getRate("VND", "USD"), 0.000001);

	}
	
	@Test
	public void testStatisticsByTopic() {
		Map<String, Object> reMap = this.statisticsService.statisticsByTopic(5);
		int totalCourse = (int) reMap.get("totalCourse");
		@SuppressWarnings("unchecked")
		List<TopicStatistics> listOfResult = (List<TopicStatistics>) reMap.get("listOfResult");
		assertEquals(18, totalCourse);
		assertEquals(5, listOfResult.size());
	}

}
