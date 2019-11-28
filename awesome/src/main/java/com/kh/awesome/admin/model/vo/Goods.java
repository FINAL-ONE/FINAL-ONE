package com.kh.awesome.admin.model.vo;

import java.sql.Date;

public class Goods {

	private int gid;
	private String goodsName;
	private int goodsPrice;
	private int count;
	private String goodsStatus;
	private String soldOut;
	private Date registerDate;
	private Date modifyDate;
	public Goods() {
	}
	public Goods(int gid, String goodsName, int goodsPrice, int count, String goodsStatus, String soldOut,
			Date registerDate, Date modifyDate) {
		this.gid = gid;
		this.goodsName = goodsName;
		this.goodsPrice = goodsPrice;
		this.count = count;
		this.goodsStatus = goodsStatus;
		this.soldOut = soldOut;
		this.registerDate = registerDate;
		this.modifyDate = modifyDate;
	}
	public int getGid() {
		return gid;
	}
	public void setGid(int gid) {
		this.gid = gid;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public int getGoodsPrice() {
		return goodsPrice;
	}
	public void setGoodsPrice(int goodsPrice) {
		this.goodsPrice = goodsPrice;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getGoodsStatus() {
		return goodsStatus;
	}
	public void setGoodsStatus(String goodsStatus) {
		this.goodsStatus = goodsStatus;
	}
	public String getSoldOut() {
		return soldOut;
	}
	public void setSoldOut(String soldOut) {
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
		return "Goods [gid=" + gid + ", goodsName=" + goodsName + ", goodsPrice=" + goodsPrice + ", count=" + count
				+ ", goodsStatus=" + goodsStatus + ", soldOut=" + soldOut + ", registerDate=" + registerDate
				+ ", modifyDate=" + modifyDate + "]";
	}
	
	
	
}

