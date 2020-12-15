package com.resemblance.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.resemblance.Paging.SearchCriteria;
import com.resemblance.service.GuestBookService;
import com.resemblance.vo.GuestBook;


@Controller
public class TestController {
	private GuestBookService guestBookService;
	@Autowired
	void setGuestBookService(GuestBookService guestBookService){
		this.guestBookService = guestBookService;
	}
	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String test() {
		SearchCriteria a = new SearchCriteria();
		a.setSearchType("writer");
		a.setKeyword("4");
		List<GuestBook> d = guestBookService.searchedlistPaging(a);
		for(int i=1; i<10; i++) {
			System.out.println(d.get(i).getId());
		}
		
		return "index";
		} 
	 
}

