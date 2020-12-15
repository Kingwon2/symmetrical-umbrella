package com.resemblance.vo;

import java.sql.Date;

public class GuestBook {
	private int id;
	private String password;
	private String contents;
	private String writer;
	private int celebrityIndex;
	private Date regDate;
	
	public GuestBook() {}
	
	public GuestBook(String password, String writer, String contents,int celebrityIndex) {
		this.password = password;
		this.writer =  writer;
		this.contents = contents;
		this.celebrityIndex = celebrityIndex;
	}
	
	public void setCelebrityIndex(int celebrityIndex) {
		this.celebrityIndex = celebrityIndex;
	}

	public void setId(int id) {
		this.id = id;
	}
	public void setPassword(String Password) {
		this.password = Password;
	}
	public void setContents(String Contents) {
		this.contents = Contents;
	}
	public void setWriter(String Writer) {
		this.writer= Writer;
	}
	
	public void setRegDate(Date Writer) {
		this.regDate= regDate;
	}

	public int getId() {
		return id;
	}

	public String getPassword() {
		return password;
	}

	public String getWriter() {
		return writer;
	}
	
	public String getContents() {
		return contents;
	}

	public Date getRegDate() {
		return regDate;
	}
	
	public int getCelebrityIndex() {
		return celebrityIndex;
	}

}
