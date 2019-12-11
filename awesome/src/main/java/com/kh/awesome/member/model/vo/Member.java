package com.kh.awesome.member.model.vo;

import java.sql.Date;

public class Member {
	
	private int mid;
	private String userId;
	private String userPwd;
	private String userName;
	private String gender;
	private String birthday;
	private String phone;
	private String email;
	private String address;
	private int point;
	private Date enrollDate;
	private Date modifyDate;
	private String admin;
	private String status;
	private String userNickname;  
	
	public Member() {
	}

	public Member(int mid, String userId, String userPwd, String userName, String gender, String birthday, String phone,
			String email, String address, int point, Date enrollDate, Date modifyDate, String admin, String status,
			String userNickname) {
		this.mid = mid;
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.gender = gender;
		this.birthday = birthday;
		this.phone = phone;
		this.email = email;
		this.address = address;
		this.point = point;
		this.enrollDate = enrollDate;
		this.modifyDate = modifyDate;
		this.admin = admin;
		this.status = status;
		this.userNickname = userNickname;
	}

	public int getMid() {
		return mid;
	}

	public void setMid(int mid) {
		this.mid = mid;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
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

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public Date getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}

	public String getAdmin() {
		return admin;
	}

	public void setAdmin(String admin) {
		this.admin = admin;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getUserNickname() {
		return userNickname;
	}

	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}

	@Override
	public String toString() {
		return "Member [mid=" + mid + ", userId=" + userId + ", userPwd=" + userPwd + ", userName=" + userName
				+ ", gender=" + gender + ", birthday=" + birthday + ", phone=" + phone + ", email=" + email
				+ ", address=" + address + ", point=" + point + ", enrollDate=" + enrollDate + ", modifyDate="
				+ modifyDate + ", admin=" + admin + ", status=" + status + ", userNickname=" + userNickname + "]";
	}
	
	
	

	
	
}
