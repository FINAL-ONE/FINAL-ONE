package com.kh.awesome.order.model.vo;

import java.sql.Date;

public class Order {
	private int oId;
	private int gId;
	private String gName;
	private int gPrice;
	private String gImage;
	private int mId;
	private String userName;
	private String phone;
	private String address;
	private String orderNum;
	private int orderCount;
	private Date orderDate;
	private String orderStatus;
	private int rowCount;
	private int usedPoint;
	private int orderPrice;
	
	public Order() {
		super();
	}

	public Order(int oId, int gId, String gName, int gPrice, String gImage, int mId, String userName, String phone,
			String address, String orderNum, int orderCount, Date orderDate, String orderStatus, int rowCount,
			int usedPoint, int orderPrice) {
		super();
		this.oId = oId;
		this.gId = gId;
		this.gName = gName;
		this.gPrice = gPrice;
		this.gImage = gImage;
		this.mId = mId;
		this.userName = userName;
		this.phone = phone;
		this.address = address;
		this.orderNum = orderNum;
		this.orderCount = orderCount;
		this.orderDate = orderDate;
		this.orderStatus = orderStatus;
		this.rowCount = rowCount;
		this.usedPoint = usedPoint;
		this.orderPrice = orderPrice;
	}

	public int getoId() {
		return oId;
	}

	public void setoId(int oId) {
		this.oId = oId;
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

	public String getgImage() {
		return gImage;
	}

	public void setgImage(String gImage) {
		this.gImage = gImage;
	}

	public int getmId() {
		return mId;
	}

	public void setmId(int mId) {
		this.mId = mId;
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

	public String getOrderNum() {
		return orderNum;
	}

	public void setOrderNum(String orderNum) {
		this.orderNum = orderNum;
	}

	public int getOrderCount() {
		return orderCount;
	}

	public void setOrderCount(int orderCount) {
		this.orderCount = orderCount;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public String getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}

	public int getRowCount() {
		return rowCount;
	}

	public void setRowCount(int rowCount) {
		this.rowCount = rowCount;
	}

	public int getUsedPoint() {
		return usedPoint;
	}

	public void setUsedPoint(int usedPoint) {
		this.usedPoint = usedPoint;
	}

	public int getOrderPrice() {
		return orderPrice;
	}

	public void setOrderPrice(int orderPrice) {
		this.orderPrice = orderPrice;
	}

	@Override
	public String toString() {
		return "Order [oId=" + oId + ", gId=" + gId + ", gName=" + gName + ", gPrice=" + gPrice + ", gImage=" + gImage
				+ ", mId=" + mId + ", userName=" + userName + ", phone=" + phone + ", address=" + address
				+ ", orderNum=" + orderNum + ", orderCount=" + orderCount + ", orderDate=" + orderDate
				+ ", orderStatus=" + orderStatus + ", rowCount=" + rowCount + ", usedPoint=" + usedPoint
				+ ", orderPrice=" + orderPrice + "]";
	}

	
}