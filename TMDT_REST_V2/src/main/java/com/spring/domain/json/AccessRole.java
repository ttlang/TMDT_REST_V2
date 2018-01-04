package com.spring.domain.json;

public class AccessRole {
	private String userID;
	
	public AccessRole(String userID) {
		super();
		this.userID = userID;
	}

	public AccessRole() {
		super();
	}

	public String getUserID() {
		return userID;
	}

	@Override
	public String toString() {
		return "AccessRole [userID=" + userID + "]";
	}
	
	
}
