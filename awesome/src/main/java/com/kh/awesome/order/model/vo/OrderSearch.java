package com.kh.awesome.order.model.vo;

import java.sql.Date;

public class OrderSearch {
	private Date date1;
	private Date date2;
	private int mid;
	
	public OrderSearch() {
	}

	public OrderSearch(Date date1, Date date2, int mid) {
		super();
		this.date1 = date1;
		this.date2 = date2;
		this.mid = mid;
	}

	public Date getDate1() {
		return date1;
	}

	public void setDate1(Date date1) {
		this.date1 = date1;
	}

	public Date getDate2() {
		return date2;
	}

	public void setDate2(Date date2) {
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