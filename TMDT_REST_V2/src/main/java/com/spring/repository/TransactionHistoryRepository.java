package com.spring.repository;

import java.util.Map;
import java.util.Optional;

import com.spring.domain.TransactionHistory;

public interface TransactionHistoryRepository {
	public Map<String, Object> getAllTransactionHistory(int page, int size);

	public Optional<TransactionHistory> getTransactionHistoryByID(String transactionHistoryID);

	public Map<String, Object> getTransactionHistoryByTraders(int page, int size, String userID);

	public String inserTransactionHistory(String transactionFormID, double debt, double balance, String userID,
			String transactionDescription);

}
