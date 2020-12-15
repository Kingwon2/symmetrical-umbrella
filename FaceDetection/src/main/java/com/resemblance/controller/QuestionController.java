package com.resemblance.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
public class QuestionController {
	@RequestMapping(value="/modify", method = RequestMethod.GET)
	public String viewUpdateList() {
		return "modify";
	}
	@RequestMapping(value="/modify_list", method = RequestMethod.GET)
	public String viewRequest() {
		return "modify_list";
	}
	@RequestMapping(value="/send", method = RequestMethod.GET)
	public String requestForm() {
		return "send";
	}

}
