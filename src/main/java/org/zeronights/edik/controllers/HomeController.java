package org.zeronights.edik.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zeronights.edik.domains.User;
import org.zeronights.edik.services.UserService;

@Controller
@SessionAttributes("user")
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	private static String firstSecret="2TvoixPalca";
	
	@Value("${secret}")
	private String secondSecret;
	@Value("${show}")
	private Boolean showSecret;
	
	
	
	@Autowired
	public UserService userService;

	@ModelAttribute("secondSecret")
	public String getSecretCode() {
		logger.debug(secondSecret);
		return secondSecret;
	}
	
	@ModelAttribute("showSecret")
	public Boolean getShowSectet() {
		logger.debug("flag: " + showSecret);
		return showSecret;
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {
		return "index";
	}
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index2() {
		return "index";
	}

	@RequestMapping(value = "/authentication", method = RequestMethod.POST)
	public String auth(@RequestParam String name, @RequestParam String pass, RedirectAttributes attributes,
			Model model) {
		User user = userService.findByNamePassword(name, pass);
		if (user == null) {
			logger.debug("there is no user with name " + name);
			model.addAttribute("error", "The username or password is incorrect");
			return "/index";
		}
		attributes.addFlashAttribute("user", user);
		return "redirect:home";
	}

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(@ModelAttribute User user, Model model) {
		if (showSecret){
			model.addAttribute("firstSecret", firstSecret);
		}
		
		return "home";
	}

	@RequestMapping("/logout")
	public String logoutHandler(SessionStatus status) {
		// logger.info("Welcome logout ! ");
		status.setComplete();
		return "index";
	}

}
