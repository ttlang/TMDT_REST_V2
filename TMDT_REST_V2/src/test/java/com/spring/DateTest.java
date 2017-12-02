package com.spring;

//import java.time.LocalDateTime;
//import java.time.ZoneId;
//import java.time.ZonedDateTime;
//import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.spring.config.security.JwtTokenUtil;
import com.spring.service.UserService;

@RunWith(SpringRunner.class)
@SpringBootTest
public class DateTest {
	@Autowired
	JwtTokenUtil jwtTokenUtil;
		@Autowired
		UserService userService;
	@Test
	public void testConverDate() {
//		String token = "eyJhbGciOiJIUzUxMiJ9.eyJpc3MiOiJzcHJpbmdib290LWp3dC1kZW1vIiwic3ViIjoiY250dGs0MEBnbWFpbC5jb20iLCJhdWQiOiJ3ZWIiLCJpYXQiOjE1MTE3MTcxMzcsImV4cCI6MTUxMTcxNzQzN30.1mRbDKTpxK3YiX2NLQ-C-vPSybLFEosRgzjsQO36-GQ-w-5XF3fzDoi84FbSu0EIqZ5TjKfziDoHg0_h-2CfwA";
//		System.err.println(jwtTokenUtil.getAllClaimsFromToken(token));
//		System.out.println("ngày sinh token "+jwtTokenUtil.getIssuedAtDateFromToken(token));
//		
//		LocalDateTime dateTime = userService.getUserByEmail(jwtTokenUtil.getUsernameFromToken(token)).getLastPasswordResetDate();
//		ZonedDateTime zdt = dateTime.atZone(ZoneId.systemDefault());
//		Date date = Date.from(zdt.toInstant());
		
//		System.err.println("tạo trước ngày thay đổi pass "+jwtTokenUtil.isCreatedBeforeLastPasswordReset(jwtTokenUtil.getIssuedAtDateFromToken(token), date));
//		
//		System.err.println("password reset "+date);
//		System.err.println("token hợp lệ "+jwtTokenUtil.validateToken(token, jwtTokenUtil.getUsernameFromToken(token)));
	}

}
