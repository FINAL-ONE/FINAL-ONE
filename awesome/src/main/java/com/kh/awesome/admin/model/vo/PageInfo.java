package com.kh.awesome.admin.model.vo;

public class PageInfo {
	// 마이바티스에서 쓴 페이지인포 가져오자
	// 페이지 필요한 객체
	// 서블릿마다 변수를 지정해서 연산해왔었는데 변수로 지정해서 다른서블릿에서도 쓸수있다.
	private int currentPage;
	private int listCount;
	private int pageLimit;
	private int maxPage;
	private int startPage;
	private int endPage;
	
	private int boardLimit;

	public PageInfo() {
	}

	public PageInfo(int currentPage, int listCount, int pageLimit, int maxPage, int startPage, int endPage,
			int boardLimit) {
		this.currentPage = currentPage;
		this.listCount = listCount;
		this.pageLimit = pageLimit;
		this.maxPage = maxPage;
		this.startPage = startPage;
		this.endPage = endPage;
		this.boardLimit = boardLimit;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getListCount() {
		return listCount;
	}

	public void setListCount(int listCount) {
		this.listCount = listCount;
	}

	public int getPageLimit() {
		return pageLimit;
	}

	public void setPageLimit(int pageLimit) {
		this.pageLimit = pageLimit;
	}

	public int getMaxPage() {
		return maxPage;
	}

	public void setMaxPage(int maxPage) {
		this.maxPage = maxPage;
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

	public int getBoardLimit() {
		return boardLimit;
	}

	public void setBoardLimit(int boardLimit) {
		this.boardLimit = boardLimit;
	}

	@Override
	public String toString() {
		return "PageInfo [currentPage=" + currentPage + ", listCount=" + listCount + ", pageLimit=" + pageLimit
				+ ", maxPage=" + maxPage + ", startPage=" + startPage + ", endPage=" + endPage + ", boardLimit="
				+ boardLimit + "]";
	}
	
}

