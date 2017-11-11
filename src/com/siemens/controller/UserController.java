package com.siemens.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.siemens.beans.User;
import com.siemens.service.UserService;

@Controller
@RequestMapping("/user.htm")
public class UserController {

	@Autowired(required = true)
	private UserService userService;

	public UserService getUserService() {
		return userService;
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@RequestMapping(method = RequestMethod.GET)
	public String showUserPage(ModelMap modelMap) {
		User user = userService.fetchAllUsers().next();
		modelMap.addAttribute("user", user);
		return "user";
	}

	@RequestMapping(method = RequestMethod.POST)
	public String createUser(@ModelAttribute("user") User user) {
		userService.insertUser(user);
		return "usersuccess";
	}
}
