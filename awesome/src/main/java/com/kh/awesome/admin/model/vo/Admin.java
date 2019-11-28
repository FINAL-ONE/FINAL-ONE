package com.kh.awesome.admin.model.vo;

import java.sql.Date;

public class Admin {
	private int sellNum;
	private int gId;
	private String goodsTitle;
	private String goodsContent;
	private String originName;
	private String filePath;
	private String contentFilePath;
	private Date sellDate;
	private Date modifyDate;
	private String status;
	
	public Admin() {
	}

	public Admin(int sellNum, int gId, String goodsTitle, String goodsContent, String originName, String filePath,
			String contentFilePath, Date sellDate, Date modifyDate, String status) {
		this.sellNum = sellNum;
		this.gId = gId;
		this.goodsTitle = goodsTitle;
		this.goodsContent = goodsContent;
		this.originName = originName;
		this.filePath = filePath;
		this.contentFilePath = contentFilePath;
		this.sellDate = sellDate;
		this.modifyDate = modifyDate;
		this.status = status;
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

	public String getGoodsTitle() {
		return goodsTitle;
	}

	public void setGoodsTitle(String goodsTitle) {
		this.goodsTitle = goodsTitle;
	}

	public String getGoodsContent() {
		return goodsContent;
	}

	public void setGoodsContent(String goodsContent) {
		this.goodsContent = goodsContent;
	}

	public String getOriginName() {
		return originName;
	}

	public void setOriginName(String originName) {
		this.originName = originName;
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

	public Date getSellDate() {
		return sellDate;
	}

	public void setSellDate(Date sellDate) {
		this.sellDate = sellDate;
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
		return "Admin [sellNum=" + sellNum + ", gId=" + gId + ", goodsTitle=" + goodsTitle + ", goodsContent="
				+ goodsContent + ", originName=" + originName + ", filePath=" + filePath + ", contentFilePath="
				+ contentFilePath + ", sellDate=" + sellDate + ", modifyDate=" + modifyDate + ", status=" + status
				+ "]";
	}



	

	
}
