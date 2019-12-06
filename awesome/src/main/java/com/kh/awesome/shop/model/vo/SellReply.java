package com.kh.awesome.shop.model.vo;

import java.sql.Date;

public class SellReply {
	/*
	GID	NUMBER
	GOODS_TITLE	VARCHAR2(100)
	GOODS_CONTENT	CLOB
	SG_FILE_PATH	CLOB
	SG_CONTENT_FILE_PATH	CLOB
	RCONTENT	CLOB
	SELL_START	NUMBER
	SR_FILE_PATH	CLOB
	SELL_DATE	DATE
	MODIFY_DATE	DATE
	STATUS	VARCHAR2(1)
	RID	NUMBER
	 */
	
	/*
	private int gId;
	private String goodTitle;
	private String goodContent;
	private String sgFilePath;
	private String sgContentFilePath;
	private String rContent;
	private int sellStart;
	private String srFilePath;
	private Date sellDate;
	private Date ModifyDate;
	private String Status;
	private int rId;
	
	public SellReply() {
	}

	public SellReply(int gId, String goodTitle, String goodContent, String sgFilePath, String sgContentFilePath,
			String rContent, int sellStart, String srFilePath, Date sellDate, Date modifyDate, String status, int rId) {
		this.gId = gId;
		this.goodTitle = goodTitle;
		this.goodContent = goodContent;
		this.sgFilePath = sgFilePath;
		this.sgContentFilePath = sgContentFilePath;
		this.rContent = rContent;
		this.sellStart = sellStart;
		this.srFilePath = srFilePath;
		this.sellDate = sellDate;
		ModifyDate = modifyDate;
		Status = status;
		this.rId = rId;
	}

	public int getgId() {
		return gId;
	}

	public void setgId(int gId) {
		this.gId = gId;
	}

	public String getGoodTitle() {
		return goodTitle;
	}

	public void setGoodTitle(String goodTitle) {
		this.goodTitle = goodTitle;
	}

	public String getGoodContent() {
		return goodContent;
	}

	public void setGoodContent(String goodContent) {
		this.goodContent = goodContent;
	}

	public String getSgFilePath() {
		return sgFilePath;
	}

	public void setSgFilePath(String sgFilePath) {
		this.sgFilePath = sgFilePath;
	}

	public String getSgContentFilePath() {
		return sgContentFilePath;
	}

	public void setSgContentFilePath(String sgContentFilePath) {
		this.sgContentFilePath = sgContentFilePath;
	}

	public String getrContent() {
		return rContent;
	}

	public void setrContent(String rContent) {
		this.rContent = rContent;
	}

	public int getSellStart() {
		return sellStart;
	}

	public void setSellStart(int sellStart) {
		this.sellStart = sellStart;
	}

	public String getSrFilePath() {
		return srFilePath;
	}

	public void setSrFilePath(String srFilePath) {
		this.srFilePath = srFilePath;
	}

	public Date getSellDate() {
		return sellDate;
	}

	public void setSellDate(Date sellDate) {
		this.sellDate = sellDate;
	}

	public Date getModifyDate() {
		return ModifyDate;
	}

	public void setModifyDate(Date modifyDate) {
		ModifyDate = modifyDate;
	}

	public String getStatus() {
		return Status;
	}

	public void setStatus(String status) {
		Status = status;
	}

	public int getrId() {
		return rId;
	}

	public void setrId(int rId) {
		this.rId = rId;
	}

	@Override
	public String toString() {
		return "SellReply [gId=" + gId + ", goodTitle=" + goodTitle + ", goodContent=" + goodContent + ", sgFilePath="
				+ sgFilePath + ", sgContentFilePath=" + sgContentFilePath + ", rContent=" + rContent + ", sellStart="
				+ sellStart + ", srFilePath=" + srFilePath + ", sellDate=" + sellDate + ", ModifyDate=" + ModifyDate
				+ ", Status=" + Status + ", rId=" + rId + "]";
	}
	
	*/
	
	

	private int rId;
	private int sellNum;
	private int gId;
	private int mId;
	private String rContent;
	private int sellStart;
	private String filePath;
	private String contentFilePath;
	private Date createDate;
	private Date modifyDate;
	private String status;
	
	public SellReply() {
	}
	
	public SellReply(int rId, int sellNum, int gId, int mId, String rContent, int sellStart, String filePath,
			String contentFilePath, Date createDate, Date modifyDate, String status) {
		this.rId = rId;
		this.sellNum = sellNum;
		this.gId = gId;
		this.mId = mId;
		this.rContent = rContent;
		this.sellStart = sellStart;
		this.filePath = filePath;
		this.contentFilePath = contentFilePath;
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
	public int getSellNum() {
		return sellNum;
	}
	public void setSellNum(int sellNum) {
		this.sellNum = sellNum;
	}
	public int getgId() {
		return gId;
	}
	public void setgId(int gId) {
		this.gId = gId;
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
	public int getSellStart() {
		return sellStart;
	}
	public void setSellStart(int sellStart) {
		this.sellStart = sellStart;
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public String getContentFilePath() {
		return contentFilePath;
	}
	public void setContentFilePath(String contentFilePath) {
		this.contentFilePath = contentFilePath;
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
	@Override
	public String toString() {
		return "SellReply [rId=" + rId + ", sellNum=" + sellNum + ", gId=" + gId + ", mId=" + mId + ", rContent="
				+ rContent + ", sellStart=" + sellStart + ", filePath=" + filePath + ", contentFilePath="
				+ contentFilePath + ", createDate=" + createDate + ", modifyDate=" + modifyDate + ", status=" + status
				+ "]";
	}
	
	
	
	
	
}
