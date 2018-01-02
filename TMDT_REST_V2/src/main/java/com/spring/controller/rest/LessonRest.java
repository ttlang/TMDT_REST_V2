package com.spring.controller.rest;

import java.util.List;

import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import org.springframework.security.access.prepost.PreAuthorize;

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
	LessonService lessonService;

	@RequestMapping(value = "/lesson/{lessonID}", method = RequestMethod.GET)
	@PreAuthorize("isRegisteredCourseFromLesson(#lessonID)||hasRole('ROLE_ADMIN')")
	public ResponseEntity<?> getLessonByLessonID(@PathVariable("lessonID") String lessonID,
			HttpServletRequest request) {
		// String authToken = jwtTokenUtil.getToken(request);
		// User user =
		// userService.getUserByEmail(jwtTokenUtil.getUsernameFromToken(authToken));
		// if (!courseService.isRegisteredCourse(user.getUserID(),
		// courseService.getCourseByLessonID(lessonID).get().getCourseID())) {
		// ApiMessage apiMessage = new ApiMessage(HttpStatus.FORBIDDEN, "Access is
		// denied");
		// return new ResponseEntity<Object>(apiMessage, apiMessage.getStatus());
		// }
		Optional<Lesson> lesson = this.lessonService.getLessonByLessonID(lessonID);
		if (!lesson.isPresent()) {
			ApiMessage apiMessage = new ApiMessage(HttpStatus.NOT_FOUND, "lesson not found");
			return new ResponseEntity<Object>(apiMessage, apiMessage.getStatus());
		} else {
			return new ResponseEntity<Object>(lesson.get(), HttpStatus.OK);
		}

	}

	@RequestMapping(value = "/lesson/relate/{lessonID}", method = RequestMethod.GET)
	@PreAuthorize("isRegisteredCourse(#lessonID)||hasRole('ROLE_ADMIN')")
	public ResponseEntity<?> getAllLessonRelate(@PathVariable("lessonID") String lessonID) {
		Optional<Lesson> lesson = this.lessonService.getLessonByLessonID(lessonID);
		if (!lesson.isPresent()) {
			ApiMessage apiMessage = new ApiMessage(HttpStatus.NOT_FOUND, "lesson not found");
			return new ResponseEntity<Object>(apiMessage, apiMessage.getStatus());
		} else {
			List<Lesson> result = this.lessonService.getAllLessonRelate(lessonID);
			return new ResponseEntity<Object>(result, HttpStatus.OK);
		}

	}

	@RequestMapping(value = "/users/lesson/first-lesson-course/{courseID}", method = RequestMethod.GET)
	public ResponseEntity<?> getFirstLessonInCourse(@PathVariable("courseID") String courseID) {
		Optional<Lesson> lesson = lessonService.getFirstLessonInCourse(courseID);
		if (!lesson.isPresent()) {
			ApiMessage apiMessage = new ApiMessage(HttpStatus.NOT_FOUND, "lesson not found");
			return new ResponseEntity<Object>(apiMessage, apiMessage.getStatus());
		} else {
			return new ResponseEntity<Object>(lesson.get(), HttpStatus.OK);
		}
	}

}
