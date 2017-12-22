package com.spring.controller.rest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;

import com.spring.service.LessonService;

@RestController
public class LessonRest {
	
	@Autowired
	LessonService lessonService;
	
}
