package com.kh.awesome.admin.model.vo;

import java.sql.Date;

public class Admin {
	private int sellNum;
	private int gId;
	private String goodsTitle;
	private int goodsPrice;
	private int count;
	private String goodsContent;
	private String filePath;
	private String contentFilePath;
	private Date sellDate;
	private Date modifyDate;
	private String status;
	
	public Admin() {
	}

	public Admin(int sellNum, int gId, String goodsTitle, int goodsPrice, int count, String goodsContent,
			String filePath, String contentFilePath, Date sellDate, Date modifyDate, String status) {
		this.sellNum = sellNum;
		this.gId = gId;
		this.goodsTitle = goodsTitle;
		this.goodsPrice = goodsPrice;
		this.count = count;
		this.goodsContent = goodsContent;
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

	public int getGoodsPrice() {
		return goodsPrice;
	}

	public void setGoodsPrice(int goodsPrice) {
		this.goodsPrice = goodsPrice;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getGoodsContent() {
		return goodsContent;
	}

	public void setGoodsContent(String goodsContent) {
		this.goodsContent = goodsContent;
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
		return "Admin [sellNum=" + sellNum + ", gId=" + gId + ", goodsTitle=" + goodsTitle + ", goodsPrice="
				+ goodsPrice + ", count=" + count + ", goodsContent=" + goodsContent + ", filePath=" + filePath
				+ ", contentFilePath=" + contentFilePath + ", sellDate=" + sellDate + ", modifyDate=" + modifyDate
				+ ", status=" + status + "]";
	}


	
	

	
}
