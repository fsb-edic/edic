package org.zeronights.edik.services;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.zeronights.edik.domains.User;

@Service
public class UserService {
	private static final Logger logger = LoggerFactory.getLogger(UserService.class);

	List<User> userDB = new ArrayList<User>();

	public UserService() {
		userDB.add(new User("admin", "1", 50));
	}

	public void addUser(User newUser) {

		userDB.add(newUser);
		logger.debug("User is created");
	}


	public Boolean findByName(String name) {
		for (int i = 0; i < userDB.size(); i++) {
			// logger.info("userDB.size() " + i);
			// logger.info("name " + name);
			// logger.info("get name " + userDB.get(i).getUsername());
			// logger.info("get password " + userDB.get(i).getPassword());

			if (userDB.get(i).getName().equals(name)) {
				logger.debug("User is found");

				return true;
			}
		}
		logger.debug("User is not found");
		return false;
	}
	
	public User findByNamePassword(String name, String pass) {

		for (int i = 0; i < userDB.size(); i++) {
			// logger.info("userDB.size() " + i);
			// logger.info("name " + name);
			// logger.info("password " + password);
			// logger.info("get name " + userDB.get(i).getUsername());
			// logger.info("get password " + userDB.get(i).getPassword());

			if (userDB.get(i).getName().equals(name) && userDB.get(i).getPass().equals(pass)) {
				logger.debug("User is found");

				return userDB.get(i);
			}
		}
		logger.debug("User is not found");
		return null;
	}

}
