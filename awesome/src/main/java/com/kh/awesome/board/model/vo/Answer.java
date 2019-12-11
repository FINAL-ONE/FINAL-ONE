package com.kh.awesome.board.model.vo;

public class Answer {

	private int aId;
	private int rId;
	private int mId;
	private String userId; 
	private String userNickname; 
	private String aContent;
	private String createDate;
	private String modifyDate;
	private String status;
	
	public Answer() {
	}

	public Answer(int aId, int rId, int mId, String userId, String userNickname, String aContent, String createDate,
			String modifyDate, String status) {
		this.aId = aId;
		this.rId = rId;
		this.mId = mId;
		this.userId = userId;
		this.userNickname = userNickname;
		this.aContent = aContent;
		this.createDate = createDate;
		this.modifyDate = modifyDate;
		this.status = status;
	}

	public int getaId() {
		return aId;
	}

	public void setaId(int aId) {
		this.aId = aId;
	}

	public int getrId() {
		return rId;
	}

	public void setrId(int rId) {
		this.rId = rId;
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

	public String getaContent() {
		return aContent;
	}

	public void setaContent(String aContent) {
		this.aContent = aContent;
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

	@Override
	public String toString() {
		return "Answer [aId=" + aId + ", rId=" + rId + ", mId=" + mId + ", userId=" + userId + ", userNickname="
				+ userNickname + ", aContent=" + aContent + ", createDate=" + createDate + ", modifyDate=" + modifyDate
				+ ", status=" + status + "]";
	}

	
	
}
