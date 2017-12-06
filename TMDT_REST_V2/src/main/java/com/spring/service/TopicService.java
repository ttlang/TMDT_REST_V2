package com.spring.service;

import java.util.List;

import com.spring.domain.Topic;



public interface TopicService {
	public List<Topic> getAllTopic();
	public Topic findId( String id);
	public boolean deleteTopicById( String id);
	public Topic editTopic(String id , Topic topic );
	public Topic create(Topic topic ) ;

}
