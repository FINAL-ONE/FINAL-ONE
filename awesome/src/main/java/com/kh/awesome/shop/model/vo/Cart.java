package com.kh.awesome.shop.model.vo;

public class Cart {
	/*
	MID	NUMBER
	GID	NUMBER
	GOODS_NAME	VARCHAR2(30 BYTE)
	GOODS_PRICE	NUMBER
	COUNT	NUMBER
	 */
	
	private int mId;
	private int gId;
	private String cateCd;
	private String goodsTitle;
	private int goodsPrice;
	private int count;
	
	public Cart() {
	}

	public Cart(int mId, int gId, String cateCd, String goodsTitle, int goodsPrice, int count) {
		this.mId = mId;
		this.gId = gId;
		this.cateCd = cateCd;
		this.goodsTitle = goodsTitle;
		this.goodsPrice = goodsPrice;
		this.count = count;
	}

	public int getmId() {
		return mId;
	}

	public void setmId(int mId) {
		this.mId = mId;
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

	public String getGoodsTitle() {
		return goodsTitle;
	}

	public void setGoodsTitle(String goodsTitle) {
		this.goodsTitle = goodsTitle;
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

	@Override
	public String toString() {
		return "Cart [mId=" + mId + ", gId=" + gId + ", cateCd=" + cateCd + ", goodsTitle=" + goodsTitle
				+ ", goodsPrice=" + goodsPrice + ", count=" + count + "]";
	}

	
}
