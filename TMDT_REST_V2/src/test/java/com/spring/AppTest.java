package com.spring;

import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class AppTest {
	
<<<<<<< HEAD
	@Autowired
	GoogleDriveApiService driveApiService;
	@Autowired
	private CourseService courseService;
	@Autowired
	CurrencyService currencyService;
<<<<<<< HEAD

	@Autowired
	private CourseService courseService;

	@Test
	public void testCurrency() {
		System.err.println(this.currencyService.getRate("VND", "USD") * 100000);
=======
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
>>>>>>> master
	}
=======
>>>>>>> 6c46f077d61cddcb6bcea8338cba39a4dd1f4085

}
