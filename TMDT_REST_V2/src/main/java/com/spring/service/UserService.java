package com.spring.service;

import java.time.LocalDateTime;
import java.util.Map;

import com.spring.domain.User;

public interface UserService {
	
	public User getUserByUserID(String userID);
	public LocalDateTime getLastPasswordResetDate(String userID);
	public User getUserByEmail(String email);
	public boolean CreateUser(String userName,String email,String password);
	public boolean checkEmailIsExists(String email);
	public boolean checkUserIdIsExists(String userID);
	
	/**
	 * register user
	 * 
	 * @param user
	 * @return number of user saved
	 */
	public int register(String userName,String email,String password);

	/**
	 * change user's status 1:active 0:   2: block
	 * @param userID 
	 * @param newStatus
	 * @return number of  row changed
	 */
	public int changeUserStatus(String userID, int newStatus);

	/**
	 * create password reset token (userID + date time)
	 * 
	 * @param userID
	 * @param offsetDateTime
	 * @return encrypt String
	 */
	public String createPasswordResetToken(String userID, LocalDateTime offsetDateTime);
	/**
	 * encode reset password token  
	 * @param encrypt
	 * @return Map
	 */
	public Map<String, Object> decryptPasswordResetToken(String encrypt);
	
	public boolean sendEmailResetPassword(String email);
	/**
	 * change user's password
	 * @param userID 
	 * @param newPassword
	 * @return number of record changed
	 */
	public int changePassWord(String userID,String newPassword);
	
	public boolean checkResetKeyIsExists(String userID,String key);
	
	public int removeKeyReset(String userID,String keyReset);
	


}
