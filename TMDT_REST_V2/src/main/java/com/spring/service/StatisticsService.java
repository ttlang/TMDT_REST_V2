package com.spring.service;

import java.util.Map;

public interface StatisticsService {
	public Map<String, Object> statisticsByTopic(int rowsLimit);
}
