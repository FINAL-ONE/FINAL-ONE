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
	
	
	private int gid;
	private int mid;
	
	public Cart() {
		
	}

	public Cart(int gid, int mid) {
		super();
		this.gid = gid;
		this.mid = mid;
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


	@Override
	public String toString() {
		return "Cart [gid=" + gid + ", mid=" + mid + "]";
	}
	

}