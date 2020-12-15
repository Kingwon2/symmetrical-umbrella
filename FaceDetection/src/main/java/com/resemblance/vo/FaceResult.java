package com.resemblance.vo;
/*
 * 얼굴 분석의 최종결과 data들을 담는다.
 */
public class FaceResult {
	private Celebrity celebrity;
	private int percent;
	private int age;
	
	public FaceResult() {}
	
	public FaceResult(Celebrity celebrity, int percent, int age) {
		this.celebrity = celebrity;
		this.percent = percent;
		this.age = age;
	}
	
	public void setAge(int age){
		this.age = age;
	}
	
	public void setPercent(int percent){
		this.percent = percent;
	}
	
	public void setCelebrity(Celebrity celebrity){
		this.celebrity = celebrity;
	}	
	
	public int getAge(){
		return this.age;
	}
	
	public int getPercent(){
		return this.percent;
	}
	
	public Celebrity getCelebrity(){
		return this.celebrity;
	}
	

}
