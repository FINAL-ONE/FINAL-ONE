package com.kh.awesome.board.model.vo;

import java.sql.Date;

public class Board {
	private int rNum; 
	private int bId;
	private int mId; 
	private String userId; 
	private int category; 
	private String bTitle;
	private String bType; 
	private String bContent;
	private int bCount;
	private Date createDate;
	private Date modifyDate;
	private String status;
	private int bLevel;
	private int bGood; 
	private int reply;
	
	public Board() {
	}

	public Board(int rNum, int bId, int mId, String userId, int category, String bTitle, String bType, String bContent,
			int bCount, Date createDate, Date modifyDate, String status, int bLevel, int bGood, int reply) {
		this.rNum = rNum;
		this.bId = bId;
		this.mId = mId;
		this.userId = userId;
		this.category = category;
		this.bTitle = bTitle;
		this.bType = bType;
		this.bContent = bContent;
		this.bCount = bCount;
		this.createDate = createDate;
		this.modifyDate = modifyDate;
		this.status = status;
		this.bLevel = bLevel;
		this.bGood = bGood;
		this.reply = reply;
	}

	public int getrNum() {
		return rNum;
	}

	public void setrNum(int rNum) {
		this.rNum = rNum;
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

	public int getCategory() {
		return category;
	}

	public void setCategory(int category) {
		this.category = category;
	}

	public String getbTitle() {
		return bTitle;
	}

	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}

	public String getbType() {
		return bType;
	}

	public void setbType(String bType) {
		this.bType = bType;
	}

	public String getbContent() {
		return bContent;
	}

	public void setbContent(String bContent) {
		this.bContent = bContent;
	}

	public int getbCount() {
		return bCount;
	}

	public void setbCount(int bCount) {
		this.bCount = bCount;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Date getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getbLevel() {
		return bLevel;
	}

	public void setbLevel(int bLevel) {
		this.bLevel = bLevel;
	}

	public int getbGood() {
		return bGood;
	}

	public void setbGood(int bGood) {
		this.bGood = bGood;
	}

	public int getReply() {
		return reply;
	}

	public void setReply(int reply) {
		this.reply = reply;
	}

	@Override
	public String toString() {
		return "Board [rNum=" + rNum + ", bId=" + bId + ", mId=" + mId + ", userId=" + userId + ", category=" + category
				+ ", bTitle=" + bTitle + ", bType=" + bType + ", bContent=" + bContent + ", bCount=" + bCount
				+ ", createDate=" + createDate + ", modifyDate=" + modifyDate + ", status=" + status + ", bLevel="
				+ bLevel + ", bGood=" + bGood + ", reply=" + reply + "]";
	}
	
	
	
	
}


