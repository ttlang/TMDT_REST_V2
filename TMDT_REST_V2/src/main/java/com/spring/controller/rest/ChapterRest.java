package com.spring.controller.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.spring.config.api.ApiMessage;
import com.spring.domain.Chapter;
import com.spring.service.ChapterService;
import com.spring.service.CourseService;

@RestController
public class ChapterRest {

	@Autowired
	private ChapterService chapterService;
	@Autowired
	private CourseService courseService;
	
	@RequestMapping(value="/users/course/{courseID}/chapter",method=RequestMethod.GET)
	public ResponseEntity<?> getChapterByCourseID(@PathVariable("courseID")String courseID){
		if(!courseService.getCourseByCourseID(courseID).isPresent()) {
			ApiMessage apiMessage = new ApiMessage(HttpStatus.NOT_FOUND,"course not found");
			return new ResponseEntity<Object>(apiMessage, apiMessage.getStatus());
		}else {
			List<Chapter> result = chapterService.getChapterByCourseID(courseID);
			return new ResponseEntity<Object>(result, HttpStatus.OK);
		}
	}
	
}
