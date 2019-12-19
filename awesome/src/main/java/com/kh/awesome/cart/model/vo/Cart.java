package com.kh.awesome.cart.model.vo;

import java.io.Serializable;

/**
 * 장바구니 VO
 * @author mijin
 *
 */
public class Cart implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 6877298557144984488L;
	
	
	private int cartNum;
	private int gId;
	private int mId;
	private int count;
	
	public Cart() {
		
	}

	public Cart(int cartNum, int gId, int mId, int count) {
		super();
		this.cartNum = cartNum;
		this.gId = gId;
		this.mId = mId;
		this.count = count;
	}

	public int getCartNum() {
		return cartNum;
	}

	public void setCartNum(int cartNum) {
		this.cartNum = cartNum;
	}

	public int getgId() {
		return gId;
	}

	public void setgId(int gId) {
		this.gId = gId;
	}

	public int getmId() {
		return mId;
	}

	public void setmId(int mId) {
		this.mId = mId;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Cart [cartNum=" + cartNum + ", gId=" + gId + ", mId=" + mId + ", count=" + count + "]";
	}



}