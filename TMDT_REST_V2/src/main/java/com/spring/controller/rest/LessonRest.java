package com.spring.controller.rest;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.spring.config.api.ApiMessage;
import com.spring.domain.Lesson;
import com.spring.service.LessonService;

@RestController
public class LessonRest {

	@Autowired
	private LessonService lessonService;

	@RequestMapping(value = "/users/lesson/{lessonID}", method = RequestMethod.GET)
	public ResponseEntity<?> getTopic(@PathVariable("lessonID") String lessonID) {
		Optional<Lesson> lesson = lessonService.getLessonByLessonID(lessonID);
		if (!lesson.isPresent()) {
			ApiMessage apiMessage = new ApiMessage(HttpStatus.NOT_FOUND, "Topic not found");
			return new ResponseEntity<Object>(apiMessage, apiMessage.getStatus());
		} else {

			return new ResponseEntity<Object>(lesson.get(), HttpStatus.OK);
		}
	}

}
