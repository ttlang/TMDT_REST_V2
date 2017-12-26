package com.spring;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.spring.repository.CommentRepository;


@RunWith(SpringRunner.class)
@SpringBootTest
public class AppTest {
	
	@Autowired
	CommentRepository commentRepository;
	@Test
	public void testGetAllTransactionHistory() {
		System.err.println(commentRepository.updateCommentContent("KH1CH2BH6CM3", "Khóa học rất bổ ích"));
		System.err.println(commentRepository.updateCommentStatut("KH1CH2BH6CM3", 0));
	}
	
}
