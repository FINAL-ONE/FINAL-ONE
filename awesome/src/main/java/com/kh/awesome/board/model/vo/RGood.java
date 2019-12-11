package com.kh.awesome.board.model.vo;

public class RGood {
	private int gId;
	private int bId; 
	private int rId; 
	private int mId; 
	private String status;
	
	
	public RGood() {
	}


	public RGood(int gId, int bId, int rId, int mId, String status) {
		super();
		this.gId = gId;
		this.bId = bId;
		this.rId = rId;
		this.mId = mId;
		this.status = status;
	}


	public int getgId() {
		return gId;
	}


	public void setgId(int gId) {
		this.gId = gId;
	}


	public int getbId() {
		return bId;
	}


	public void setbId(int bId) {
		this.bId = bId;
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


	public String getStatus() {
		return status;
	}


	public void setStatus(String status) {
		this.status = status;
	}


	@Override
	public String toString() {
		return "RGood [gId=" + gId + ", bId=" + bId + ", rId=" + rId + ", mId=" + mId + ", status=" + status + "]";
	}
	
	
}
