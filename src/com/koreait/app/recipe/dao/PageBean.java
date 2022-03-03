package com.koreait.app.recipe.dao;

public class PageBean {
	private int page=1;	//현재 페이지(get)
	private int totalCount;	//row 전체의 수(get)
	private int startPage;	//출력 시작
	private int endPage;	//출력 끝
	private int startRow=10;	//한 페이지에 몇개의 로우 (선택 set)
	private int displayPage=10;	//한 페이지에 몇개의 페이지 (선택 set)
	boolean prev;	//prev 버튼이 보일건지 안보일건지
	boolean next;	//next 버튼이 보일건지 안보일건지
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public int getStartRow() {
		return startRow;
	}
	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}
	public int getDisplayPage() {
		return displayPage;
	}
	public void setDisplayPage(int displayPage) {
		this.displayPage = displayPage;
	}
	public boolean isPrev() {
		return prev;
	}
	public void setPrev(boolean prev) {
		this.prev = prev;
	}
	public boolean isNext() {
		return next;
	}
	public void setNext(boolean next) {
		this.next = next;
	}
	private void paging() {
		endPage = ((int)Math.ceil(page/(double)displayPage))*displayPage;
		System.out.println("endPage : "+endPage);
		
		startPage = endPage-(displayPage-1);
		System.out.println("startPage : "+startPage);
		
		int totalPage = (int)Math.ceil(totalCount/(double)startRow);
		
		if(totalPage<endPage) {
			endPage=totalPage;
			next=false;
		}else {
			next=true;
		}
		prev = (startPage==1)?false:true;	//page가 11이상에만 나옴
		System.out.println("endPage : "+endPage);
		System.out.println("totalPage : "+totalPage);
	}
	
	
}
