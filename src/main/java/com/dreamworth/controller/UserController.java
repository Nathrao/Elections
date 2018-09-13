package com.dreamworth.controller;

import java.util.Properties;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dreamworth.service.UserService;

@Controller
public class UserController {

	private static final Log logger = LogFactory.getLog(UserController.class);
	
	@Resource(name = "viewProperties")
	private Properties viewMap;

	@Autowired
	private UserService service;

	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public String viewResolver(@RequestParam String name) {
		logger.trace("UserController.viewResolver() entry");

		if (name != null) {
			logger.debug("requested resource :" + name);
			if (viewMap.containsKey(name)) {
				name = viewMap.getProperty(name);
				logger.debug(name + ".jsp request mapped ");
			} else {
				logger.debug("requested resource not availabe :" + name);
				name = viewMap.getProperty("FatalErrorPage");
			}
		}
		logger.trace("UserController.viewResolver() exit");
		return name;
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String init() {
		logger.trace("UserController.init() exit and return index.jsp file");
		return "index";
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView addPerson(Model m) {
		ModelAndView modelAndView = new ModelAndView("result");
		modelAndView.addObject("result", "success");
		logger.trace("UserController.addPerson() executed");
		return modelAndView;
	}

	public UserService getService() {
		return service;
	}

	public void setService(UserService service) {
		this.service = service;
	}

}
