package com.kh.awesome.order.model.vo;

import java.sql.Date;

public class Goods {

	private int gId;
	private String gName;
	private int gPrice;
	private int count;
	private char gStatus;
	private char soldOut;
	private Date registerDate;
	private Date modifyDate;
	public Goods() {
		super();
	}
	public Goods(int gId, String gName, int gPrice, int count, char gStatus, char soldOut, Date registerDate,
			Date modifyDate) {
		super();
		this.gId = gId;
		this.gName = gName;
		this.gPrice = gPrice;
		this.count = count;
		this.gStatus = gStatus;
		this.soldOut = soldOut;
		this.registerDate = registerDate;
		this.modifyDate = modifyDate;
	}
	public int getgId() {
		return gId;
	}
	public void setgId(int gId) {
		this.gId = gId;
	}
	public String getgName() {
		return gName;
	}
	public void setgName(String gName) {
		this.gName = gName;
	}
	public int getgPrice() {
		return gPrice;
	}
	public void setgPrice(int gPrice) {
		this.gPrice = gPrice;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public char getgStatus() {
		return gStatus;
	}
	public void setgStatus(char gStatus) {
		this.gStatus = gStatus;
	}
	public char getSoldOut() {
		return soldOut;
	}
	public void setSoldOut(char soldOut) {
		this.soldOut = soldOut;
	}
	public Date getRegisterDate() {
		return registerDate;
	}
	public void setRegisterDate(Date registerDate) {
		this.registerDate = registerDate;
	}
	public Date getModifyDate() {
		return modifyDate;
	}
	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}
	@Override
	public String toString() {
		return "Goods [gId=" + gId + ", gName=" + gName + ", gPrice=" + gPrice + ", count=" + count + ", gStatus="
				+ gStatus + ", soldOut=" + soldOut + ", registerDate=" + registerDate + ", modifyDate=" + modifyDate
				+ "]";
	}
	
	
}
