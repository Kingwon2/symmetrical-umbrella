package com.resemblance.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.resemblance.Paging.Criteria;
import com.resemblance.Paging.PageMaker;
import com.resemblance.service.CelebrityService;

@Controller
public class CelebrityListController {
	
	@Autowired
	CelebrityService celebrityService;
	
	//private static final Logger logger = LoggerFactory.getLogger(CelebrityListController.class);
	@RequestMapping(value = "/celebrity_list", method = RequestMethod.GET)
	public String viewCelebrity(Model model, Criteria criteria) {
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCriteria(criteria);
		pageMaker.setTotalCount(celebrityService.count());
		
		model.addAttribute("list", celebrityService.listPaging(criteria));
		model.addAttribute("pageMaker", pageMaker);
		return "face_list";
	}
}
