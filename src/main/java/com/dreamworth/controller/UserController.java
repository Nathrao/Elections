package com.dreamworth.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.dreamworth.entity.User;
import com.dreamworth.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService service;

	public UserService getService() {
		return service;
	}

	public void setService(UserService service) {
		this.service = service;
	}
	
	@RequestMapping(value= "/view", method = RequestMethod.GET)
	public String viewResolver(@RequestParam String name){
		return name;
	}

	@RequestMapping(value= "/", method = RequestMethod.GET)
	public String init(){
		return "index";
	}
	
	
	@RequestMapping(value= "/register", method = RequestMethod.POST)
	public String addPerson(@ModelAttribute("user") User user){
		return service.addUser(user);
	}

}
