package com.spring.repository;

public interface TopicRepository {
	/**
	 * create topic
	 * @param topicTitle
	 * @param topicDescription
	 * @param topicStatus
	 * @return number of rows effect
	 */
	public int createTopic(String topicTitle, String topicDescription, int topicStatus);
}
