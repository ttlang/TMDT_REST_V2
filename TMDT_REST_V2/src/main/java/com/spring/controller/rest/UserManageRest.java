package com.spring.controller.rest;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.spring.service.UserService;

@RestController
public class UserManageRest {
	@Autowired
	private UserService userService;

	@RequestMapping(value = "/admin/user_info", method = RequestMethod.GET, params = { "page", "size" })
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	public ResponseEntity<?> getUserInfo(@RequestParam(value = "page", defaultValue = "1", required = false) int page,
			@RequestParam(value = "size", defaultValue = "1", required = false) int size) {
		Map<String, Object> result = this.userService.getListUserInfo(page, size);
		if (result.isEmpty()) {
			return new ResponseEntity<Object>(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<Object>(result, HttpStatus.OK);

	}
}
