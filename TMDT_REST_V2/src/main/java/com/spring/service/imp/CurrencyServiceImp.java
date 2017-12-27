package com.spring.service.imp;

import org.springframework.stereotype.Service;

import com.spring.service.CurrencyService;

@Service
public class CurrencyServiceImp implements CurrencyService {
	public static final double USD_VND = 22000.0;
	public static final double VND_SCORE =1000.0;

	@Override
	public double currencyConvert(double amount) {
		return  amount * USD_VND;
	}

	@Override
	public double moneyToScore(double amount) {
		return amount/VND_SCORE;
	}

}
