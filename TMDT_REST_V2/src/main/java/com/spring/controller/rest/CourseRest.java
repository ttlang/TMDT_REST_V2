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
import com.spring.domain.Course;
import com.spring.domain.json.CourseStatus;
import com.spring.service.CourseService;

@RestController
public class CourseRest {
	@Autowired
	private CourseService courseService;

	@RequestMapping(value = "/users/course/{courseID}", method = RequestMethod.GET)
	public ResponseEntity<?> getCourseByID(@PathVariable("courseID") String courseID) {
		Optional<Course> result = courseService.getCourseByCourseID(courseID);
		if (!result.isPresent()) {
			ApiMessage apiMessage = new ApiMessage(HttpStatus.NOT_FOUND, "cant found course");
			return new ResponseEntity<Object>(apiMessage, apiMessage.getStatus());
		}
		return new ResponseEntity<Course>(result.get(), HttpStatus.OK);
	}

	@RequestMapping(value="/users/course",method = RequestMethod.GET, params = { "page", "size" })
	public ResponseEntity<?> getTopic(@RequestParam(value = "page", defaultValue = "1", required = false) int page,
			@RequestParam(value = "size", defaultValue = "1", required = false) int size) {
		Map<String, Object> result = this.courseService.getCourseWithPaging(page, size);
		if (result.isEmpty()) {
			ApiMessage apiMessage = new ApiMessage(HttpStatus.NOT_FOUND, "not topic found");
			return new ResponseEntity<Object>(apiMessage, apiMessage.getStatus());
		}
		return new ResponseEntity<Object>(result, HttpStatus.OK);
	}

	@RequestMapping(value = "/admin/course/status", method = RequestMethod.PATCH)
	@PreAuthorize("canEditCourse(#courseStatus.courseID)")
	public ResponseEntity<?> updateCourseStatus(@RequestBody CourseStatus courseStatus) {

		Optional<Course> result = courseService.getCourseByCourseID(courseStatus.getCourseID());
		if (!result.isPresent()) {
			ApiMessage apiMessage = new ApiMessage(HttpStatus.NOT_FOUND, "cant found course");
			return new ResponseEntity<Object>(apiMessage, apiMessage.getStatus());
		} else {
			if (this.courseService.updateCourseStatut(courseStatus.getCourseID(), courseStatus.getNewStatus()) <= 0) {
				ApiMessage apiMessage = new ApiMessage(HttpStatus.CONFLICT, "update status failed");
				return new ResponseEntity<Object>(apiMessage, apiMessage.getStatus());
			}
			return new ResponseEntity<Course>(this.courseService.getCourseByCourseID(result.get().getCourseID()).get(), HttpStatus.OK);

		}

	}
}
