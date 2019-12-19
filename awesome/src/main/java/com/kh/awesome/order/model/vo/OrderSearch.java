package com.kh.awesome.order.model.vo;

import java.sql.Date;

public class OrderSearch {
	private String date1;
	private String date2;
	private int mid;
	
	public OrderSearch() {
	}

	public OrderSearch(String date1, String date2, int mid) {
		super();
		this.date1 = date1;
		this.date2 = date2;
		this.mid = mid;
	}

	public String getDate1() {
		return date1;
	}

	public void setDate1(String date1) {
		this.date1 = date1;
	}

	public String getDate2() {
		return date2;
	}

	public void setDate2(String date2) {
		this.date2 = date2;
	}

	public int getMid() {
		return mid;
	}

	public void setMid(int mid) {
		this.mid = mid;
	}

	@Override
	public String toString() {
		return "OrderSearch [date1=" + date1 + ", date2=" + date2 + ", mid=" + mid + "]";
	}
	
}