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
	private int gid;
	private int mid;
	private int count;
	
	public Cart() {
		
	}

	public Cart(int cartNum, int gid, int mid, int count) {
		super();
		this.cartNum = cartNum;
		this.gid = gid;
		this.mid = mid;
		this.count = count;
	}

	public int getCartNum() {
		return cartNum;
	}

	public void setCartNum(int cartNum) {
		this.cartNum = cartNum;
	}

	public int getGid() {
		return gid;
	}

	public void setGid(int gid) {
		this.gid = gid;
	}

	public int getMid() {
		return mid;
	}

	public void setMid(int mid) {
		this.mid = mid;
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
		return "Cart [cartNum=" + cartNum + ", gid=" + gid + ", mid=" + mid + ", count=" + count + "]";
	}
	
	
	


}