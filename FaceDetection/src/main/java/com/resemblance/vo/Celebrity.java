package com.resemblance.vo;
// db의 자료를 담는 vo
public class Celebrity {

	private int id;
	private String name;
	private String fileName;
	private String grade;
	
	public Celebrity() {}

	public Celebrity(String name, String fileName, String grade) {
		this.name = name;
		this.fileName = fileName;
		this.grade = grade;
	}

	public void setId(int id) {
		this.id = id;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getFileName() {
		return fileName;
	}

	public String getGrade() {
		return grade;
	}
	
	

}
