package com.resemblance.service;

import com.resemblance.vo.GuestBook;

public class test {
	public void test() {
		GuestBookService a = new GuestBookService();
		for(int i =1; i<100; i++) {
			GuestBook c = new GuestBook();
			c.setWriter(i+"번 째 글쓴이");
			c.setPassword(i+"번 째 비밀번호");
			c.setContents(i+"번 째 내용");
			a.insert(c);
			System.out.print(i+"번 쨰 성공");
		}
}
}
