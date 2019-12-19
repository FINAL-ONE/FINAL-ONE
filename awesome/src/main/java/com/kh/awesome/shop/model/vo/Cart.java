package com.kh.awesome.shop.model.vo;

public class Cart {
	/*
	CARTNUM	NUMBER
	MID	NUMBER
	GID	NUMBER
	COUNT	NUMBER
	 */
	
	private int cartNum;
	private int mId;
	private int gId;
	private int count;
	
	public Cart() {
	}

	public Cart(int cartNum, int mId, int gId, int count) {
		this.cartNum = cartNum;
		this.mId = mId;
		this.gId = gId;
		this.count = count;
	}

	public int getCartNum() {
		return cartNum;
	}

	public void setCartNum(int cartNum) {
		this.cartNum = cartNum;
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

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	@Override
	public String toString() {
		return "Cart [cartNum=" + cartNum + ", mId=" + mId + ", gId=" + gId + ", count=" + count + "]";
	}

	
}
