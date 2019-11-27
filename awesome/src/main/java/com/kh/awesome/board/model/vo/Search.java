package com.kh.awesome.board.model.vo;

public class Search {
	
	private String type;
	private String SearchWord;
	
	
	public Search() {
	}

	public Search(String type, String searchWord) {
		this.type = type;
		SearchWord = searchWord;
	}

	
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getSearchWord() {
		return SearchWord;
	}

	public void setSearchWord(String searchWord) {
		SearchWord = searchWord;
	}

	@Override
	public String toString() {
		return "Search [type=" + type + ", SearchWord=" + SearchWord + "]";
	} 
	
	
}
