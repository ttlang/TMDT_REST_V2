package com.spring.controller.rest;

import java.util.HashMap;
import java.util.List;
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
import org.springframework.web.bind.annotation.RestController;

import com.spring.config.api.ApiMessage;
import com.spring.domain.Chapter;
import com.spring.domain.Lesson;
import com.spring.domain.json.LessonCreate;
import com.spring.service.ChapterService;
import com.spring.service.LessonService;

@RestController
public class LessonRest {

	@Autowired
	private LessonService lessonService;
	@Autowired
	private ChapterService chapterService;

	@RequestMapping(value = "/lesson/{lessonID}", method = RequestMethod.GET)
	@PreAuthorize("IsCourseAuthorOrIsRegisteredCourse(#lessonID)||hasRole('ROLE_ADMIN')")
	public ResponseEntity<?> getLessonByLessonID(@PathVariable("lessonID") String lessonID) {
		Optional<Lesson> lesson = this.lessonService.getLessonByLessonID(lessonID);
		if (!lesson.isPresent()) {
			ApiMessage apiMessage = new ApiMessage(HttpStatus.NOT_FOUND, "lesson not found");
			return new ResponseEntity<Object>(apiMessage, apiMessage.getStatus());
		} else {
			this.lessonService.addViewForlesson(1, lessonID);

			return new ResponseEntity<Object>(lesson.get(), HttpStatus.OK);
		}

	}

	@RequestMapping(value = "/lesson/relate/{lessonID}", method = RequestMethod.GET)
	@PreAuthorize("IsCourseAuthorOrIsRegisteredCourse(#lessonID)||hasRole('ROLE_ADMIN')")
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
	@PreAuthorize("isRegisteredCourse(#courseID)||hasRole('ROLE_ADMIN')||canEditCourse(#courseID)")
	public ResponseEntity<?> getFirstLessonInCourse(@PathVariable("courseID") String courseID) {
		Optional<Lesson> lesson = lessonService.getFirstLessonInCourse(courseID);
		if (!lesson.isPresent()) {
			ApiMessage apiMessage = new ApiMessage(HttpStatus.NOT_FOUND, "lesson not found");
			return new ResponseEntity<Object>(apiMessage, apiMessage.getStatus());
		} else {
			return new ResponseEntity<Object>(lesson.get(), HttpStatus.OK);
		}
	}
	@RequestMapping(value="/user/lesson-is-non-commercial/{lessonID}", method = RequestMethod.GET)
	public ResponseEntity<?>  lessonIsNonCommercial(@PathVariable("lessonID")  String lessonID){
		Map<String, Object> map = new HashMap<>();
		if (lessonService.lessonIsNonCommercial(lessonID))
			map.put("success", 1);
		else
			map.put("success", 0);
		return new ResponseEntity<Object>(map, HttpStatus.OK);
	}

	@RequestMapping(value = "/lesson", method = RequestMethod.POST)
	@PreAuthorize("isCourseAuthorByChapterID(#lessonCreate.chapterID)||hasRole('ROLE_ADMIN')")
	public ResponseEntity<?> insertLesson(@RequestBody LessonCreate lessonCreate) {
		Optional<Chapter> chapter = this.chapterService.getChapterByChapterID(lessonCreate.getChapterID());
		if (!chapter.isPresent()) {
			ApiMessage apiMessage = new ApiMessage(HttpStatus.NOT_FOUND, "chapter not found");
			return new ResponseEntity<Object>(apiMessage, apiMessage.getStatus());
		}
		String lessonID = this.lessonService.insertLesson(lessonCreate.getLessonTitle(),
				lessonCreate.getLessonContent(), lessonCreate.getChapterID());

		if (lessonID == null) {
			ApiMessage apiMessage = new ApiMessage(HttpStatus.CONFLICT, "create chapter failed");
			return new ResponseEntity<Object>(apiMessage, apiMessage.getStatus());
		}
		Optional<Lesson> lesson = this.lessonService.getLessonByLessonID(lessonID);
		return new ResponseEntity<Object>(lesson.get(), HttpStatus.CREATED);
	}

	@RequestMapping(value = "/lesson/{lessonID}",method=RequestMethod.DELETE)
	@PreAuthorize("isCourseAuthorByLessonID(#lessonID)||hasRole('ROLE_ADMIN')")
	public ResponseEntity<?> deleteLesson(@PathVariable("lessonID") String lessonID) {
		Optional<Lesson> lesson = this.lessonService.getLessonByLessonID(lessonID);
		if (!lesson.isPresent()) {
			ApiMessage apiMessage = new ApiMessage(HttpStatus.NOT_FOUND, "lesson not found");
			return new ResponseEntity<Object>(apiMessage, apiMessage.getStatus());

		}
		int resultOfDel = this.lessonService.deleteLesson(lessonID);
		if (resultOfDel < 0) {
			ApiMessage apiMessage = new ApiMessage(HttpStatus.CONFLICT, "delete lesson failed");
			return new ResponseEntity<Object>(apiMessage, apiMessage.getStatus());
		}
		ApiMessage apiMessage = new ApiMessage(HttpStatus.OK, "delete lesson successfully");
		return new ResponseEntity<Object>(apiMessage, apiMessage.getStatus());

	}

}
