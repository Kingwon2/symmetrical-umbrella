package com.resemblance.Paging;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;

public class SearchCriteria extends Criteria{
	
	private String searchType;
	private String keyword;
	
	public SearchCriteria() {
		this.searchType = "writer";
		this.keyword = "글쓴";
	}
	
	public void setSearchType(String searchType){
		this.searchType = searchType;
	}
	
	public void setKeyword(String keyword){
		this.keyword = decoding(keyword);
	}
	
	private String decoding(String keyword) {
		if(keyword == null || keyword.trim().length() == 0 || keyword.equals("")) {
			return "";
		}
		
		try {
			return URLDecoder.decode(keyword,"UTF-8");
		} catch (UnsupportedEncodingException e) {
			return "";
		}
	}
	
	public String getKeyword(){
		return keyword;
	}
	
	public String getSearchType(){
		return searchType;
	}

}
