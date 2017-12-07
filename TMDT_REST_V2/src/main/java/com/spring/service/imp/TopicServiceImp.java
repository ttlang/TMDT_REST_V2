package com.spring.service.imp;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.repository.TopicRepository;
import com.spring.service.TopicService;
@Service
public class TopicServiceImp implements TopicService {
@Autowired
private TopicRepository topicRepository;
	@Override
	public Map<String, Object> getTopicWithPaging(int page, int size) {
		return this.topicRepository.getTopicWithPaging(page, size);
	}

}
