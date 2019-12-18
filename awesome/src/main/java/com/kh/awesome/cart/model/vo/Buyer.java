package com.kh.awesome.cart.model.vo;

public class Buyer {
	private int mid;
	private String userName;
	private String phone;
	private String address;
	private int point;
	private int goodsPrice;
	
	public Buyer() {
		
	}
	
	public Buyer(int mid, String userName, String phone, String address, int point, int goodsPrice) {
		super();
		this.mid = mid;
		this.userName = userName;
		this.phone = phone;
		this.address = address;
		this.point = point;
		this.goodsPrice = goodsPrice;
	}
	
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public int getGoodsPrice() {
		return goodsPrice;
	}
	public void setGoodsPrice(int goodsPrice) {
		this.goodsPrice = goodsPrice;
	}
	@Override
	public String toString() {
		return "Buyer [mid=" + mid + ", userName=" + userName + ", phone=" + phone + ", address=" + address + ", point="
				+ point + ", goodsPrice=" + goodsPrice + "]";
	}
	
	
	
}
