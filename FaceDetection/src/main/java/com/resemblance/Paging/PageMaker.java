package com.resemblance.Paging;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

public class PageMaker {
	private int totalCount; // 전체 게시글 개수
	private int startPage; // 시작 페이지 번호
	private int endPage; // 끝 페이지 번호
	private boolean prev; //이전 링크
	private boolean next; //다음 링크
	
	private int displayPageNum = 10; //하단의 페이지 번호 개수
	
	private Criteria criteria;
	
	public void setCriteria(Criteria criteria) {
		this.criteria = criteria;
	}
	
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		calcDate();
	}
	
	private void calcDate() {
		endPage = (int) (Math.ceil(criteria.getPage() / (double) displayPageNum) * displayPageNum);
		startPage = (endPage - displayPageNum) + 1;
		
		int tempEndPage = (int) (Math.ceil(totalCount / (double) criteria.getPerPageNum()));
		
		if(endPage > tempEndPage) {
			endPage = tempEndPage;
		}
		
		prev = startPage ==1 ? false : true;
		next = endPage * criteria.getPerPageNum() >= totalCount ? false : true;
	}
	
	public String makeQuery(int page) {
		UriComponents uriComponents = UriComponentsBuilder.newInstance()
				.queryParam("page", page)
				.queryParam("perPageNum", criteria.getPerPageNum())
				.queryParam("searchType", ((SearchCriteria) criteria).getSearchType())
				.queryParam("keyword", encoding(((SearchCriteria) criteria).getKeyword()))
				.build();
		
		return uriComponents.toUriString();
	}
	
	private String encoding(String keyword) {
		if(keyword == null || keyword.trim().length() == 0) {
			return "";
		}
		
		try {
			return URLEncoder.encode(keyword, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			return "";
		}
	}
	
	public int getTotalCount() {
		return totalCount;
	}
	
	public int getStartPage() {
		return startPage;
	}
	
	public int getEndPage() {
		return endPage;
	}
	
	public boolean getPrev() {
		return prev;
	}
	
	public boolean getNext() {
		return next;
	}

}
