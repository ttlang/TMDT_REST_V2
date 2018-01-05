package com.spring.service.imp;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.StringTokenizer;

import javax.mail.internet.InternetAddress;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.spring.domain.User;
import com.spring.domain.custom.UserInfo;
import com.spring.repository.UserRepository;
import com.spring.service.AES;
import com.spring.service.MailService;
import com.spring.service.UserService;

@Service
public class UserServiceImp implements UserService {

	private static final Logger LOGGER = LoggerFactory.getLogger(UserServiceImp.class);

	@Autowired
	private UserRepository userRepository;
	@Autowired
	private AES aes;
	@Autowired
	private MailService mailService;

	@Autowired
	private PasswordEncoder passwordEncoder;

	@Value("${email.from}")
	private String sendFrom;
	@Value("${front_end.scheme}")
	private String scheme;
	@Value("${front_end.server_name}")
	private String serverName;

	@Value("${front_end.server_port}")
	private String serverPort;

	@Value("${front_end.link_reset_password}")
	private String linkReset;
	@Value("${front_end.link_register}")
	private String linkRegister;

	@Override
	public User getUserByUserID(String userID) {

		return this.userRepository.getUserByUserID(userID);
	}

	@Override
	public LocalDateTime getLastPasswordResetDate(String userID) {
		return this.userRepository.getLastPasswordResetDate(userID);
	}

	@Override
	public User getUserByEmail(String email) {
		return this.userRepository.getUserByEmail(email);
	}

	@Override
	public boolean CreateUser(String userName, String email, String password) {
		return this.userRepository.CreateUser(userName, email, password) > 0;
	}

	@Override
	public boolean checkEmailIsExists(String email) {
		return this.userRepository.getUserByEmail(email) != null;
	}

	@Override
	public boolean checkUserIdIsExists(String userID) {
		return this.userRepository.getUserByUserID(userID) != null;
	}

	@Override
	public int register(String userName, String email, String password) {
		int result = userRepository.CreateUser(userName, email, password);
		String userID = null;
		if (result > 0) {
			userID = userRepository.getUserByEmail(email).getUserID();
			String userIDEncrypt = aes.encrypt(userID);
			Collection<InternetAddress> to = new ArrayList<>();
			Map<String, Object> map = new HashMap<>();
			try {
				String linkRegister = this.scheme + "://" + this.serverName + ":" + this.serverPort + this.linkRegister
						+ userIDEncrypt;
				map.put("linkRegister", linkRegister);
				to.add(new InternetAddress(email));
				mailService.sendMail(to, "Hoàn tất đăng kí 3TPL", "/mail_template/register.html", map, "logo.png");
			} catch (Exception e) {
				LOGGER.error(e.getMessage());
			}

		}

		return result;

	}

	@Override
	public int changeUserStatus(String userID, int newStatus) {
		return this.userRepository.changeUserStatus(userID, newStatus);
	}

	@Override
	public String createPasswordResetToken(String userID, LocalDateTime offsetDateTime) {
		String userIdEncrypt = this.aes.encrypt(userID);
		String[] dateSplit = offsetDateTime.toString().split("T");
		String date = this.aes.encrypt(dateSplit[0]);
		String time = this.aes.encrypt(dateSplit[1]);
		return userIdEncrypt + "_" + date + "_" + time;
	}

	@Override
	public Map<String, Object> decryptPasswordResetToken(String encrypt) {
		StringTokenizer stringTokenizer = new StringTokenizer(encrypt, "_");
		String userId = null;
		String dateCreateToken = null;
		String timeCreateToken = null;
		while (stringTokenizer.hasMoreTokens()) {
			userId = this.aes.decrypt(stringTokenizer.nextToken());
			dateCreateToken = this.aes.decrypt(stringTokenizer.nextToken());
			timeCreateToken = this.aes.decrypt(stringTokenizer.nextToken());

		}
		LocalDateTime localDateTime = LocalDateTime.parse(dateCreateToken + "T" + timeCreateToken);
		Map<String, Object> result = new HashMap<>();
		result.put("userId", userId);
		result.put("dateTimeCreateToken", localDateTime);
		return result;
	}

	@Override
	public boolean sendEmailResetPassword(String email) {
		User user = this.userRepository.getUserByEmail(email);
		if (user != null) {
			String userID = user.getUserID();
			try {
				String token = this.createPasswordResetToken(userID, LocalDateTime.now());
				// save token reset
				this.userRepository.saveKeyReset(userID, token);

				Collection<InternetAddress> to = new ArrayList<>();
				Map<String, Object> map = new HashMap<>();
				try {
					String linkResetPassword = this.scheme + "://" + this.serverName + ":" + this.serverPort
							+ this.linkReset + token;
					map.put("linkResetPassword", linkResetPassword);
					to.add(new InternetAddress(user.getEmail()));
					mailService.sendMail(to, "Thay đổi mật khẩu 3TPL", "/mail_template/reset_password.html", map,
							"logo.png");
				} catch (Exception e) {
					LOGGER.error(e.getMessage());
					return false;
				}
			} catch (Exception e) {
				LOGGER.error(e.getMessage());
				return false;

			}
		}
		LOGGER.info(user.toString());
		return true;
	}

	@Override
	public int changePassWord(String userID, String newPassword) {
		newPassword = passwordEncoder.encode(newPassword);
		return this.userRepository.changeUserPassword(userID, newPassword);
	}

	@Override
	public boolean checkResetKeyIsExists(String userID, String key) {
		List<String> listOfResetKey = this.userRepository.getKeYResetByUserId(userID);
		return listOfResetKey.contains(key);
	}

	@Override
	public int removeKeyReset(String userID, String keyReset) {
		return this.userRepository.removeKeyReset(userID, keyReset);
	}

	@Override
	public Optional<UserInfo> getUserInfo(String userID) {
		return this.userRepository.getUserInfo(userID);
	}

	@Override
	public Map<String, Object> getUserWithPaging(int page, int size) {
		return this.userRepository.getUserWithPaging(page, size);
	}

	public int addScore(String userID, double score) {
		Optional<User> user = Optional.ofNullable(this.userRepository.getUserByUserID(userID));
		int result = 0;
		if (user.isPresent()) {
			double newScore = user.get().getScore() + score;
			result = this.userRepository.updateScore(userID, newScore);
		}
		return result;
	}

	@Override
	public boolean checkBalance(String userID, double banlance) {
		User user = this.userRepository.getUserByUserID(userID);
		return user.getScore() >= banlance;
	}

	@Override
	public Map<String, Object> getListUserInfo(int page, int size) {
		return this.userRepository.getListUserInfo(page, size);
	}

	@Override
	public int updateUserInfo(String userName, String avatar, String address, String phoneNumber, String userID) {
		return this.userRepository.updateUserInfo(userName, avatar, address, phoneNumber, userID);
	}

	@Override
	public int saveKey(String userID, String key) {
		return this.userRepository.saveKeyReset(userID, key);
	}

	@Override
	public int deleteKey(String userID, String key) {
		return this.userRepository.removeKeyReset(userID, key);
	}
}
