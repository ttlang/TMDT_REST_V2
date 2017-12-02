package com.spring;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.spring.domain.User;
import com.spring.repository.UserRepository;
import com.spring.service.UserService;

@RunWith(SpringRunner.class)
@SpringBootTest
public class UserTest {

	private static final Logger LOGGER = LoggerFactory.getLogger(UserTest.class);

	@Autowired
	UserRepository userRepository;
	@Autowired
	UserService userService;
	@Test
	public void testGetUserById() {
		User result = userRepository.getUserByUserID("ND1");
		LOGGER.info(result.toString());
	}

	@Test
	public void lastPasswordResetDate() {
		LOGGER.info(userRepository.getUserByUserID("ND1").getLastPasswordResetDate().toString());
	}

	@Test
	public void testGetUserByEmail() {
		LOGGER.info(userRepository.getUserByEmail("cnttk40@gmail.com").toString());
	}

	@Test
	public void testCreateUser() {
		int result = userRepository.CreateUser("Trần Văn Thắng", "vanthang1996@gmail.com", "1234");
		assertEquals(1, result);
	}
	
	@Test
	public void testCheckEmailIsExist() {
		assertTrue(userService.checkEmailIsExists("lang.tt16@gmail.com"));
	}
	@Test
	public void testchangeUserStatus() {
		assertEquals(1, userService.changeUserStatus("nd1", 1));
	}
	@Test
	public void testChangePassword() {
		assertEquals(1, userService.changePassWord("nd1", "1234"));
		
	}
	@Test
	public void testSendMailResetPass() {
	assertTrue(userService.sendEmailResetPassword("lang.tt16@gmail.com"));
	}
	@Test
	public void testSaveKey() {
		assertEquals(1, userRepository.saveKeyReset("ND1", "8J/KJVtO3x6IQUolNbJ/3g_L9/BLLHJ/nfimQdNQmKN5g_JS6Ji0/PS7k2a50B8TemhQ"));
	}
	@Test
	public void testRemoveKey() {
		assertEquals(1, userRepository.removeKeyReset("ND1", "8J/KJVtO3x6IQUolNbJ/3g_L9/BLLHJ/nfimQdNQmKN5g_JS6Ji0/PS7k2a50B8TemhQ"));
	}
	@Test
	public void testGetKeyResetByUserID() {
		assertEquals(2, userRepository.getKeYResetByUserId("ND1").size());
		assertEquals(true, userService.checkResetKeyIsExists("ND1", "8J/KJVtO3x6IQUolNbJ/3g_L9/BLLHJ/nfimQdNQmKN5g_dwmESMjsmXF6AFM2oo5i9Q"));
		
	}
}
