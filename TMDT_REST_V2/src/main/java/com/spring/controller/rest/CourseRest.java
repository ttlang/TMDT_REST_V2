package com.spring.controller.rest;

import java.util.Map;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.jsondoc.core.annotation.ApiMethod;
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
import com.spring.config.security.JwtTokenUtil;
import com.spring.domain.Course;
import com.spring.domain.User;
import com.spring.domain.json.CourseCreate;
import com.spring.domain.json.CourseStatus;
import com.spring.domain.json.CourseUpdate;
import com.spring.service.CourseService;
import com.spring.service.UserService;

@RestController
public class CourseRest {
	@Autowired
	private CourseService courseService;
	@Autowired
	private JwtTokenUtil jwtTokenUtil;
	@Autowired
	private UserService userService;

	@RequestMapping(value = "/users/course/{courseID}", method = RequestMethod.GET)
	public ResponseEntity<?> getCourseByID(@PathVariable("courseID") String courseID) {
		Optional<Course> result = courseService.getCourseByCourseID(courseID);
		if (!result.isPresent()) {
			ApiMessage apiMessage = new ApiMessage(HttpStatus.NOT_FOUND, "cant found course");
			return new ResponseEntity<Object>(apiMessage, apiMessage.getStatus());
		}
		return new ResponseEntity<Course>(result.get(), HttpStatus.OK);
	}

	@RequestMapping(value = "/users/course", method = RequestMethod.GET, params = { "page", "size" })
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
	@PreAuthorize("canEditCourse(#courseStatus.courseID)||hasRole('ROLE_ADMIN')")
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
			return new ResponseEntity<Course>(this.courseService.getCourseByCourseID(result.get().getCourseID()).get(),
					HttpStatus.OK);

		}

	}

	@RequestMapping(value = "/users/course", method = RequestMethod.POST)
	@PreAuthorize("hasRole('ROLE_USER')")
	public ResponseEntity<?> createCourse(@RequestBody CourseCreate courseCreate, HttpServletRequest request) {
		String authToken = jwtTokenUtil.getToken(request);
		User user = userService.getUserByEmail(jwtTokenUtil.getUsernameFromToken(authToken));

		String CourseIDAfterInsert = this.courseService.createCourse(courseCreate.getCourseTitle(),
				courseCreate.getCourseDescription(), user.getUserID(), courseCreate.getPrice(),
				courseCreate.getCourseTypeID(), courseCreate.getTopicID(), courseCreate.getCourseAvatar(),
				courseCreate.getCourseDetail());

		if (!CourseIDAfterInsert.isEmpty()) {
			Optional<Course> course = this.courseService.getCourseByCourseID(CourseIDAfterInsert);
			return new ResponseEntity<Object>(course.get(), HttpStatus.CREATED);

		}
		ApiMessage apiMessage = new ApiMessage(HttpStatus.CONFLICT, "create course failed");
		return new ResponseEntity<Object>(apiMessage, apiMessage.getStatus());
	}

	@RequestMapping(value = "/user/course", method = RequestMethod.PATCH)
	@PreAuthorize("canEditCourse(#courseUpdate.courseID)||hasRole('ROLE_ADMIN')")
	public ResponseEntity<?> updateCourse(@RequestBody CourseUpdate courseUpdate) {
		if (!this.courseService.getCourseByCourseID(courseUpdate.getCourseID()).isPresent()) {
			ApiMessage apiMessage = new ApiMessage(HttpStatus.NOT_FOUND, "course not found");
			return new ResponseEntity<Object>(apiMessage, apiMessage.getStatus());
		} else {
			try {
				this.courseService.updateCourse(courseUpdate.getCourseID(), courseUpdate.getCourseTitle(),
						courseUpdate.getCourseDescription(), Integer.valueOf(courseUpdate.getPrice()),
						courseUpdate.getCourseTypeID(), courseUpdate.getTopicID(), courseUpdate.getCourseAvatar(),
						courseUpdate.getCourseDetail(), courseUpdate.getStatus());
			} catch (Exception e) {
				ApiMessage apiMessage = new ApiMessage(HttpStatus.CONFLICT, e.getMessage());
				return new ResponseEntity<Object>(apiMessage, apiMessage.getStatus());
			}
		}
		return new ResponseEntity<Object>(this.courseService.getCourseByCourseID(courseUpdate.getCourseID()).get(),
				HttpStatus.CREATED);

	}
	
	//get courses that user created
	@ApiMethod(description = "Lấy danh sách khóa học mà user đã tạo")
	@RequestMapping(value = "/users/courses", method = RequestMethod.GET, params = {"page", "size"})
	@PreAuthorize("hasRole('ROLE_USER')")
	public ResponseEntity<?> getCourseByAuthorWithPaging(@RequestParam(value = "page", defaultValue = "1", required = false) int page,
			@RequestParam(value = "size", defaultValue = "1", required = false) int size,HttpServletRequest request){
		String email = this.jwtTokenUtil.getUsernameFromToken(this.jwtTokenUtil.getToken(request));
		User user = this.userService.getUserByEmail(email);
		Map<String, Object> listCourseByAuthor = this.courseService.getCourseByAuthorWithPaging(page, size, user.getUserID());
		if(listCourseByAuthor.isEmpty()) {
			ApiMessage apiMessage = new ApiMessage(HttpStatus.NOT_FOUND, "This user dont post any course");
			return new ResponseEntity<Object>(apiMessage, apiMessage.getStatus());
		}
		return new ResponseEntity<Object>(listCourseByAuthor, HttpStatus.OK);
	}
	
}
