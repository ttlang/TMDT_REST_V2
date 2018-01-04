package com.spring.controller.rest;

import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.spring.config.api.ApiMessage;
import com.spring.domain.TransactionHistory;
import com.spring.service.TransactionHistoryService;

@RestController
public class TransactionHistoryRest {
	@Autowired
	TransactionHistoryService transactionHistoryService;

	@RequestMapping(value = "/admin/transaction_history", method = RequestMethod.GET, params = { "page", "size" })
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	public ResponseEntity<?> getAllTransactionHistory(
			@RequestParam(value = "page", defaultValue = "1", required = true) int page,
			@RequestParam(value = "size", defaultValue = "1", required = true) int size) {
		Map<String, Object> result = this.transactionHistoryService.getAllTransactionHistory(page, size);
		if (result.isEmpty()) {
			ApiMessage apiMessage = new ApiMessage(HttpStatus.NO_CONTENT, "no transaction history found");
			return new ResponseEntity<Object>(apiMessage, apiMessage.getStatus());
		}
		return new ResponseEntity<Object>(result, HttpStatus.OK);
	}

	@RequestMapping(value = "/admin/transaction_history/{transactionHistoryID}")
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	public ResponseEntity<?> getTransactionHistoryByID(
			@PathVariable("transactionHistoryID") String transactionHistoryID) {
		Optional<TransactionHistory> th = this.transactionHistoryService
				.getTransactionHistoryByID(transactionHistoryID);
		if (!th.isPresent()) {
			ApiMessage apiMessage = new ApiMessage(HttpStatus.NOT_FOUND, "transaction history not found");
			return new ResponseEntity<Object>(apiMessage, apiMessage.getStatus());
		}
		return new ResponseEntity<Object>(th.get(), HttpStatus.OK);

	}

}
