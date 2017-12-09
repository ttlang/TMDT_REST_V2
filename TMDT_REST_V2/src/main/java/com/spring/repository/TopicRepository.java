package com.spring.repository;

import java.util.Map;
import java.util.Optional;

import com.spring.domain.Topic;

public interface TopicRepository {

	public int createTopic(String topicName, String topicDescription, int topicStatut);

	public Map<String, Object> getTopicWithPaging(int page, int size);

	public Optional<Topic> getTopicByID(String topicID);

	public int updateTopicStatus(String topicID, int newStatut);

	public int updateTopicWithTopicID(Topic topic);

}
