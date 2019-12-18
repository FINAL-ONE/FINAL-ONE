package com.kh.awesome.board.model.vo;

public class Search {
	
	private String type;
	private String SearchWord;
	private int category; 
	
	public Search() {
	}

	public Search(String type, String searchWord, int category) {
		super();
		this.type = type;
		SearchWord = searchWord;
		this.category = category;
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

	public int getCategory() {
		return category;
	}

	public void setCategory(int category) {
		this.category = category;
	}

	@Override
	public String toString() {
		return "Search [type=" + type + ", SearchWord=" + SearchWord + ", category=" + category + "]";
	}

	
	
}
