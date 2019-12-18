package com.kh.awesome.order.model.vo;

import java.sql.Date;

public class Order {
	private int oId;
	private int gId;
	private String gName;
	private int gPrice;
	private String gImage;
	private int mid;
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
	
	private Date date1;
	private Date date2;
	
	public Order() {
		super();
	}

	public Order(int oId, int gId, String gName, int gPrice, String gImage, int mid, String userName, String phone,
			String address, String orderNum, int orderCount, Date orderDate, String orderStatus, int rowCount,
			int usedPoint, int orderPrice, Date date1, Date date2) {
		this.oId = oId;
		this.gId = gId;
		this.gName = gName;
		this.gPrice = gPrice;
		this.gImage = gImage;
		this.mid = mid;
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
		this.date1 = date1;
		this.date2 = date2;
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

	public Date getDate1() {
		return date1;
	}

	public void setDate1(Date date1) {
		this.date1 = date1;
	}

	public Date getDate2() {
		return date2;
	}

	public void setDate2(Date date2) {
		this.date2 = date2;
	}

	@Override
	public String toString() {
		return "Order [oId=" + oId + ", gId=" + gId + ", gName=" + gName + ", gPrice=" + gPrice + ", gImage=" + gImage
				+ ", mid=" + mid + ", userName=" + userName + ", phone=" + phone + ", address=" + address
				+ ", orderNum=" + orderNum + ", orderCount=" + orderCount + ", orderDate=" + orderDate
				+ ", orderStatus=" + orderStatus + ", rowCount=" + rowCount + ", usedPoint=" + usedPoint
				+ ", orderPrice=" + orderPrice + ", date1=" + date1 + ", date2=" + date2 + "]";
	}
	
	
}