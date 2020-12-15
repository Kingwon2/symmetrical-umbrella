package com.resemblance.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.resemblance.Paging.Criteria;
import com.resemblance.Paging.SearchCriteria;
import com.resemblance.dao.GuestBookDao;
import com.resemblance.vo.GuestBook;

public class GuestBookService {
	private GuestBookDao guestBookDao;
	@Autowired
	public void setGuestBookDao(GuestBookDao guestBookDao) {
		this.guestBookDao = guestBookDao;
	}
	
	public List<GuestBook> selectAll(){
		return guestBookDao.selectAll();
	}
	
	public List<GuestBook> listPaging(Criteria criteria){
		return guestBookDao.listPaging(criteria);
	}
	/*
	public List<GuestBook> selectByWriter(String writer) {
		return guestBookDao.selectByWriter(writer);
	}
	*/
	public void insert(GuestBook guestBook) {
		guestBookDao.insert(guestBook);
	}
	
	public int count() {
		return guestBookDao.countAll();
	}
	
	public int searchedCount(SearchCriteria searchCriteria) {
		return guestBookDao.searchedCount(searchCriteria);
	}
	public List<GuestBook> searchedlistPaging(SearchCriteria searchCriteria){
		return guestBookDao.searchedlistPaging(searchCriteria);
	}
	
	public void delete(int id) {
		guestBookDao.delete(id);
	}
	
	public boolean isCorrectPassword(int id, String password) throws Exception  {
		return guestBookDao.isCorrectPassword(id, password);
	}

}
