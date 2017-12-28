package com.spring.repository;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

import com.spring.domain.User;
import com.spring.domain.custom.UserInfo;

public interface UserRepository {
	public User getUserByUserID(String userID);

	public LocalDateTime getLastPasswordResetDate(String userID);

	public User getUserByEmail(String email);

	public int CreateUser(String userName, String email, String password);
	/**
	 * change user's status 1:active 0:   2: block
	 * @param userID 
	 * @param newStatus
	 * @return number of  row changed
	 */
	public int changeUserStatus(String userID, int newStatus);
	
	public int changeUserPassword(String userID,String newPassword);
	
	public int saveKeyReset(String userID,String keyReset);
	
	public int removeKeyReset(String userID,String keyReset);
	
	public List<String>getKeYResetByUserId(String userID);
	
	public Optional<UserInfo> getUserInfo(String userID);
	
	public int updateScore(String userID,double score);

}
