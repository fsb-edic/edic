package org.zeronights.edik.validators;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import org.zeronights.edik.domains.User;

public class UserValidator implements Validator {

	private static final Logger logger = LoggerFactory.getLogger(UserValidator.class);

	@Override
	public boolean supports(Class<?> clazz) {
		return User.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors e) {

		//logger.info("Checking ");
		User user = (User) target;

		if (user.getName() == null) {
			e.rejectValue("name", "null", "Fill your name");

		} else if (!user.getName().matches("[0-9A-Za-z]+")) {
			e.rejectValue("name", "onlynumbersletters", "Only letters and numbers in your name");
		}

		if (user.getPass() == null) {
			e.rejectValue("pass", "numeric", "Fill your password");
		} else if (!user.getPass().matches("[0-9A-Za-z]+")) {
			e.rejectValue("pass", "onlynumbersletters", "Only letters and numbers in your password");
		}

		if (user.getWeight() == null) {
			e.rejectValue("weight", "numeric", "Fill your weight. Weight has to be numeric value");

		} else if (user.getWeight() < 30) {
			e.rejectValue("weight", "tooskinny", "You cannot be less than 30 to join us");

		} else if (user.getWeight() > 500) {
			e.rejectValue("weight", "toofat", "You cannot be more than 500 to join us");
		}

	}

}
