package com.giantrocket.team.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "")
public class HomeController {
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public ModelAndView getHome() {
		ModelAndView view = new ModelAndView("index-screen");
		return view;
	}
	
}
