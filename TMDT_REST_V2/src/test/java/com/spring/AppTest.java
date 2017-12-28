package com.spring;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.spring.repository.TransactionHistoryRepository;

@RunWith(SpringRunner.class)
@SpringBootTest
public class AppTest {
	@Autowired
	TransactionHistoryRepository transactionHistoryRepository;
	@Test
	public void testGetAllTransactionHistory() {
		System.err.println(transactionHistoryRepository.inserTransactionHistory("NT", 0, 200.5, "ND2","Nạp tiền"));
	}

}
