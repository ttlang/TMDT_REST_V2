package com.spring;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.spring.domain.Topic;
import com.spring.repository.TopicRepository;

@RunWith(SpringRunner.class)
@SpringBootTest
public class TopicTest {
	private static final Logger LOGGER = LoggerFactory.getLogger(TopicTest.class);
	
	@Autowired
	TopicRepository topicRepository;
	
	@Test
	public void testCreateTopic() {
		LOGGER.info("" + topicRepository.createTopic("Lập trình AngularJS", "Lập trình AngularJS", 1));
	}
	@Test
	public void testGetTopicWithPaging() {
		Map<String, Object> result = topicRepository.getTopicWithPaging(1, 10);
		assertEquals(2, result.size());
		
	}
	@Test
	public void testUpdateStatut() {
		assertEquals(1,this.topicRepository.updateTopicStatus("CD1", 1));
	}
	@Test
	public void testUpdateTopic() {
		Topic topic = new Topic("CD1", null,null, 1);
		assertEquals(1, this.topicRepository.updateTopicWithTopicID(topic));
	}
	
	@Test
	public void testGetTopicByID() {
		assertTrue(this.topicRepository.getTopicByID("CD1").isPresent());
	}
}


