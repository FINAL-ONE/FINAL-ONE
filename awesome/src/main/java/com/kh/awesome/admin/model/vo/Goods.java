package com.kh.awesome.admin.model.vo;

import java.sql.Date;

public class Goods {

	private int gId;
	private String cateCd;
	private String goodsName;
	private int goodsPrice;
	private int count;
	private String goodsStatus;
	private String soldout;
	private Date registerDate;
	private Date modifyDate;

	private String cateNm;
	private String lclCd;
	private String mclCd;
	private String sclCd;

	public Goods() {
		super();
	}

	public Goods(int gId, String cateCd, String goodsName, int goodsPrice, int count, String goodsStatus,
			String soldout, Date registerDate, Date modifyDate, String cateNm, String lclCd, String mclCd,
			String sclCd) {
		super();
		this.gId = gId;
		this.cateCd = cateCd;
		this.goodsName = goodsName;
		this.goodsPrice = goodsPrice;
		this.count = count;
		this.goodsStatus = goodsStatus;
		this.soldout = soldout;
		this.registerDate = registerDate;
		this.modifyDate = modifyDate;
		this.cateNm = cateNm;
		this.lclCd = lclCd;
		this.mclCd = mclCd;
		this.sclCd = sclCd;
	}

	public int getgId() {
		return gId;
	}

	public void setgId(int gId) {
		this.gId = gId;
	}

	public String getCateCd() {
		return cateCd;
	}

	public void setCateCd(String cateCd) {
		this.cateCd = cateCd;
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

	public String getSoldout() {
		return soldout;
	}

	public void setSoldout(String soldout) {
		this.soldout = soldout;
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

	public String getCateNm() {
		return cateNm;
	}

	public void setCateNm(String cateNm) {
		this.cateNm = cateNm;
	}

	public String getLclCd() {
		return lclCd;
	}

	public void setLclCd(String lclCd) {
		this.lclCd = lclCd;
	}

	public String getMclCd() {
		return mclCd;
	}

	public void setMclCd(String mclCd) {
		this.mclCd = mclCd;
	}

	public String getSclCd() {
		return sclCd;
	}

	public void setSclCd(String sclCd) {
		this.sclCd = sclCd;
	}

	@Override
	public String toString() {
		return "Goods [gId=" + gId + ", cateCd=" + cateCd + ", goodsName=" + goodsName + ", goodsPrice=" + goodsPrice
				+ ", count=" + count + ", goodsStatus=" + goodsStatus + ", soldout=" + soldout + ", registerDate="
				+ registerDate + ", modifyDate=" + modifyDate + ", cateNm=" + cateNm + ", lclCd=" + lclCd + ", mclCd="
				+ mclCd + ", sclCd=" + sclCd + "]";
	}

}
