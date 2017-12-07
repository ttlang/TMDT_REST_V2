package com.spring.repository;

import java.util.Map;

public interface TopicRepository {
	/**
	 * create topic
	 * @param topicTitle
	 * @param topicDescription
	 * @param topicStatus
	 * @return number of rows effect
	 */
	public int createTopic(String topicTitle, String topicDescription, int topicStatus);
	
	public Map<String, Object> getTopicWithPaging(int page,int size);
}
