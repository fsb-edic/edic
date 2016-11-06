package org.zeronights.edik.controllers;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.zeronights.edik.domains.User;
import org.zeronights.edik.services.UserService;
import org.zeronights.edik.validators.UserValidator;

@Controller
public class RegistrationController {

	@Autowired
	private UserService userService;

	private static final Logger logger = LoggerFactory.getLogger(RegistrationController.class);

	@RequestMapping(value = "/reg", method = RequestMethod.GET)
	public String register(Model model) {
		model.addAttribute("user", new User());
		return "reg";
	}

	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		//logger.info("binding " );
		binder.setValidator(new UserValidator());
	}
	
	@RequestMapping(value = "/reg", method = RequestMethod.POST)
	public String registerProcess(@Valid User user, BindingResult result, Model model) {
		logger.debug("result " + result );
		
		if (result.hasErrors()) {
			return "reg";
		}
		//old style check
		if(userService.findByName(user.getName())){
			model.addAttribute("error", "Username is already in use");
			return "reg";
		}
		
		logger.info("Successeful registration ! " + user);
		userService.addUser(user);

		model.addAttribute("message", "Your registration is complete! Now you can sign in!");
		return "success";

	}


}
