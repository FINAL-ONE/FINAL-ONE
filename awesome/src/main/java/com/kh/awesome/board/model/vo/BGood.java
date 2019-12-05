package com.kh.awesome.board.model.vo;

public class BGood {
	
	private String gId;
	private String bId; 
	private String mId;
	private String status;
	
	public BGood() {
	}

	public BGood(String gId, String bId, String mId, String status) {
		this.gId = gId;
		this.bId = bId;
		this.mId = mId;
		this.status = status;
	}

	public String getgId() {
		return gId;
	}

	public void setgId(String gId) {
		this.gId = gId;
	}

	public String getbId() {
		return bId;
	}

	public void setbId(String bId) {
		this.bId = bId;
	}

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
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
		return "Bgood [gId=" + gId + ", bId=" + bId + ", mId=" + mId + ", status=" + status + "]";
	} 
	
}
