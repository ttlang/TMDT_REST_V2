package com.spring;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.spring.repository.RoleRepository;

@RunWith(SpringRunner.class)
@SpringBootTest
public class RoleTest {

	private static final Logger LOGGER = LoggerFactory.getLogger(RoleTest.class);

	@Autowired
	RoleRepository repository;

	@Test
	public void testGetRoleByUserID() {
		LOGGER.info(repository.getListRoleByUserID("ND1").toString());
	}
}
