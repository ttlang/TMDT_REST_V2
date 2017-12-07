package com.spring.domain.custom;

public class UserCustom{
	private String userID;
	private String userName;
	private String email;
	private String avatar;
	private String address;
	private String phoneNumber;

	public UserCustom() {
		super();
	}

	public UserCustom(String userID, String userName, String email, String avatar, String address, String phoneNumber) {
		super();
		this.userID = userID;
		this.userName = userName;
		this.email = email;
		this.avatar = avatar;
		this.address = address;
		this.phoneNumber = phoneNumber;
	}

	
	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	@Override
	public String toString() {
		return "UserCustom [userID=" + userID + ", userName=" + userName + ", email=" + email + ", avatar=" + avatar
				+ ", address=" + address + ", phoneNumber=" + phoneNumber + "]";
	}

	

	
	
	
}
