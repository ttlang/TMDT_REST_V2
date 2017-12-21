package com.spring.controller.rest;

import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.spring.config.api.ApiMessage;
import com.spring.domain.Lesson;
import com.spring.service.LessonAttachService;
import com.spring.service.LessonService;

@RestController
public class LessonAttachRest {
	@Autowired
	private LessonAttachService lessonAttachService;
	@Autowired
	private LessonService lessonService;

	@RequestMapping(value = "/admin/lesson/{lessonID}/lesson_attach", params = { "page", "size" })
	public ResponseEntity<?> getLessonAttachByLessonIDWithPaging(
			@RequestParam(name = "page", defaultValue = "1") int page,
			@RequestParam(name = "size", defaultValue = "1") int size, @PathVariable("lessonID") String lessonID) {

		Optional<Lesson> lesson = this.lessonService.getLessonByLessonID(lessonID);
		if (!lesson.isPresent()) {
			ApiMessage apiMessage = new ApiMessage(HttpStatus.NOT_FOUND, "lesson not found");
			return new ResponseEntity<Object>(apiMessage, apiMessage.getStatus());
		} else {
			Map<String, Object> result = lessonAttachService.getLessonAttachByLessonIDWithPaging(page, size, lessonID);
			return new ResponseEntity<Object>(result, HttpStatus.OK);
		}

	}

}
