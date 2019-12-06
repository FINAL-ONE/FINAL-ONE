package com.kh.awesome.board.model.vo;

import java.sql.Date;

public class Reply {
	private int rId;
	private int bId;
	private int mId;
	private String rContent;
	private String createDate;
	private String modifyDate;
	private String status;
	
	public Reply() {
		super();
	}

	public Reply(int rId, int bId, int mId, String rContent, String createDate, String modifyDate, String status) {
		super();
		this.rId = rId;
		this.bId = bId;
		this.mId = mId;
		this.rContent = rContent;
		this.createDate = createDate;
		this.modifyDate = modifyDate;
		this.status = status;
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

	@Override
	public String toString() {
		return "Reply [rId=" + rId + ", bId=" + bId + ", mId=" + mId + ", rContent=" + rContent + ", createDate="
				+ createDate + ", modifyDate=" + modifyDate + ", status=" + status + "]";
	}
	
	
	
	
}
