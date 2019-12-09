package com.kh.awesome.board.model.vo;

import java.sql.Date;
import java.util.ArrayList;

public class Reply {
	private int rId;
	private int bId;
	private int mId;
	private String userId; 
	private String userNickname; 
	private String rContent;
	private String createDate;
	private String modifyDate;
	private String status;
	private int rGood;
	private ArrayList<Answer> aList;
	
	public Reply() {
		super();
	}

	public Reply(int rId, int bId, int mId, String userId, String userNickname, String rContent, String createDate,
			String modifyDate, String status, int rGood, ArrayList<Answer> aList) {
		super();
		this.rId = rId;
		this.bId = bId;
		this.mId = mId;
		this.userId = userId;
		this.userNickname = userNickname;
		this.rContent = rContent;
		this.createDate = createDate;
		this.modifyDate = modifyDate;
		this.status = status;
		this.rGood = rGood;
		this.aList = aList;
	}

	public int getrId() {
		return rId;
	}

	public void setrId(int rId) {
		this.rId = rId;
	}

	public int getbId() {
		return bId;
	}

	public void setbId(int bId) {
		this.bId = bId;
	}

	public int getmId() {
		return mId;
	}

	public void setmId(int mId) {
		this.mId = mId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserNickname() {
		return userNickname;
	}

	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}

	public String getrContent() {
		return rContent;
	}

	public void setrContent(String rContent) {
		this.rContent = rContent;
	}

	public String getCreateDate() {
		return createDate;
	}

	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}

	public String getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(String modifyDate) {
		this.modifyDate = modifyDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getrGood() {
		return rGood;
	}

	public void setrGood(int rGood) {
		this.rGood = rGood;
	}

	public ArrayList<Answer> getaList() {
		return aList;
	}

	public void setaList(ArrayList<Answer> aList) {
		this.aList = aList;
	}

	@Override
	public String toString() {
		return "Reply [rId=" + rId + ", bId=" + bId + ", mId=" + mId + ", userId=" + userId + ", userNickname="
				+ userNickname + ", rContent=" + rContent + ", createDate=" + createDate + ", modifyDate=" + modifyDate
				+ ", status=" + status + ", rGood=" + rGood + ", aList=" + aList + "]";
	}


	

	
	
	
}
