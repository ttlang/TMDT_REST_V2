package com.spring.service;

import java.util.Map;

public interface TopicService {
	/**
	 * get topic with paging parameter 
	 * @param page current page begin with 1
	 * @param size number of record per page
	 * @return Map<String, Object> with two key (listOfResult, numberOfPage)
	 */
	public Map<String, Object> getTopicWithPaging(int page,int size);

}
