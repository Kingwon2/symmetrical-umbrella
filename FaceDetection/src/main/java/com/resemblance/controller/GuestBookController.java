package com.resemblance.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.resemblance.Paging.Criteria;
import com.resemblance.Paging.PageMaker;
import com.resemblance.Paging.SearchCriteria;
import com.resemblance.service.GuestBookService;
import com.resemblance.vo.GuestBook;
@Controller
public class GuestBookController {
	
	@Autowired
	private GuestBookService guestBookService;
	/*
	@RequestMapping(value="guestbook/verify_password", method = RequestMethod.POST)
	public String verify(@RequestParam("password")String password) {
		
		return "board/write";
	}
	*/
	
    @RequestMapping(value = "/guestbook/uploadForm.do", method = RequestMethod.POST) 
    public String uploadForm(@RequestParam("id") int id, Model model) throws Exception {
    	model.addAttribute("id", id);
    	return "uploadForm";
    }

	@RequestMapping(value="/guestbook/write", method = RequestMethod.GET)
	public String write() {
		return "board/write";
	}
	
	@RequestMapping(value="/guestbook/insert", method = RequestMethod.POST)
	public String insert(@ModelAttribute GuestBook guestBook) { //@없어도될듯
		guestBookService.insert(guestBook);
		return "redirect:/guestbook/list";
	}
	
	@RequestMapping(value="/guestbook/list", method = RequestMethod.GET)
	public String view(@ModelAttribute SearchCriteria searchCriteria, Model model) {
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCriteria(searchCriteria);
		pageMaker.setTotalCount(guestBookService.searchedCount(searchCriteria));
		model.addAttribute("guestbook", guestBookService.searchedlistPaging(searchCriteria));
		model.addAttribute("pageMaker", pageMaker);
		return "board/total_list";
	} 
	
	@RequestMapping(value="/guestbook/removePaging", method = RequestMethod.POST)
	public String remove(@RequestParam("id") int id, @RequestParam("password") String password,
								Criteria criteria,RedirectAttributes redirectAttributes) throws Exception {
		guestBookService.isCorrectPassword(id, password);
		redirectAttributes.addAttribute("page", criteria.getPage());
		redirectAttributes.addAttribute("perPageNum",criteria.getPerPageNum());
		redirectAttributes.addFlashAttribute("msg", "delsuccess");
	 
		return "redirect:/guestbook/lists"; // 수정 필요
	 }
	
	 
		
		
}
