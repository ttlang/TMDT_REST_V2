package com.spring.controller.rest;

import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.spring.config.api.ApiMessage;
import com.spring.domain.Topic;
import com.spring.domain.json.TopicCreation;
import com.spring.service.TopicService;

@RestController
public class TopicRest {
	@Autowired
	private TopicService topicService;

	@RequestMapping(value = "/user/topic", method = RequestMethod.GET, params = { "page", "size" })
	public ResponseEntity<?> getTopic(@RequestParam(value = "page", defaultValue = "1", required = false) int page,
			@RequestParam(value = "size", defaultValue = "1", required = false) int size) {
		Map<String, Object> result = this.topicService.getTopicWithPaging(page, size);
		if (result.isEmpty()) {
			ApiMessage apiMessage = new ApiMessage(HttpStatus.NO_CONTENT, "no topic found");
			return new ResponseEntity<Object>(apiMessage, apiMessage.getStatus());
		}
		return new ResponseEntity<Object>(result, HttpStatus.OK);
	}

	@RequestMapping(value = "/admin/topic", method = RequestMethod.POST)
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	public ResponseEntity<?> createTopic(@RequestBody TopicCreation topic) {
		int result = this.topicService.createTopic(topic.getTopicName(), topic.getTopicDescription(),
				topic.getTopicStatus());
		if (result > 0) {
			ApiMessage apiMessage = new ApiMessage(HttpStatus.CREATED, "topic was created successfully");
			return new ResponseEntity<Object>(apiMessage, apiMessage.getStatus());
		}
		ApiMessage apiMessage = new ApiMessage(HttpStatus.UNPROCESSABLE_ENTITY, "Topics created failed");
		return new ResponseEntity<Object>(apiMessage, apiMessage.getStatus());

	}

	@RequestMapping(value = "/topic/{topicID}", method = RequestMethod.GET)
	public ResponseEntity<?> getTopicByID(@PathVariable("topicID") String topicID) {
		Optional<Topic> result = this.topicService.getTopicByID(topicID);
		if (!result.isPresent()) {
			ApiMessage apiMessage = new ApiMessage(HttpStatus.NOT_FOUND, "Topic not found");
			return new ResponseEntity<Object>(apiMessage, apiMessage.getStatus());
		} else {

			return new ResponseEntity<Object>(result.get(), HttpStatus.OK);
		}
	}

	@RequestMapping(value = "/admin/topic", method = RequestMethod.PATCH)
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	public ResponseEntity<?> updateTopic(@RequestBody Topic topic) {

		if (!this.topicService.getTopicByID(topic.getTopicID()).isPresent()) {
			ApiMessage apiMessage = new ApiMessage(HttpStatus.NOT_FOUND, "can not find topic");
			return new ResponseEntity<Object>(apiMessage, apiMessage.getStatus());
		}
		int result = this.topicService.updateTopicWithTopicID(topic);
		if (result > 0) {
			ApiMessage apiMessage = new ApiMessage(HttpStatus.OK, "topic was created successfully");
			return new ResponseEntity<Object>(apiMessage, apiMessage.getStatus());

		}
		ApiMessage apiMessage = new ApiMessage(HttpStatus.UNPROCESSABLE_ENTITY, "create topic failed");
		return new ResponseEntity<Object>(apiMessage, apiMessage.getStatus());
	}
}
