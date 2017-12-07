package com.spring.controller.rest;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.spring.config.api.ApiMessage;
import com.spring.service.TopicService;

@RestController
@RequestMapping(value = "/user/topic")
public class TopicRest {
	@Autowired
	private TopicService topicService;

	@RequestMapping(method = RequestMethod.GET, params = { "page", "size" })
	public ResponseEntity<?> getTopic(@RequestParam(value = "page", defaultValue = "1", required = false) int page,
			@RequestParam(value = "size", defaultValue = "1",required=false) int size) {
		Map<String, Object> result = this.topicService.getTopicWithPaging(page, size);
		if (result.isEmpty()) {
			ApiMessage apiMessage = new ApiMessage(HttpStatus.NO_CONTENT, "not topic found");
			return new ResponseEntity<Object>(apiMessage, apiMessage.getStatus());
		}
		return new ResponseEntity<Object>(result, HttpStatus.OK);
	}
}
