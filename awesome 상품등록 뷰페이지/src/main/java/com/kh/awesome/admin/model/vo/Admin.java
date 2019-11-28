package com.kh.awesome.admin.model.vo;

import java.sql.Date;

public class Admin {
	private int sellNum;
	private int gId;
	private String goodsTitle;
	private String goodsContent;
	private String goodsImage;
	private String originName;
	private String changerName;
	private String filePath;
	private Date sellDate;
	private Date modifyDate;
	private String status;
	
	public Admin() {
	}

	public Admin(int sellNum, int gId, String goodsTitle, String goodsContent, String goodsImage, String originName,
			String changerName, String filePath, Date sellDate, Date modifyDate, String status) {
		this.sellNum = sellNum;
		this.gId = gId;
		this.goodsTitle = goodsTitle;
		this.goodsContent = goodsContent;
		this.goodsImage = goodsImage;
		this.originName = originName;
		this.changerName = changerName;
		this.filePath = filePath;
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

	public String getGoodsImage() {
		return goodsImage;
	}

	public void setGoodsImage(String goodsImage) {
		this.goodsImage = goodsImage;
	}

	public String getOriginName() {
		return originName;
	}

	public void setOriginName(String originName) {
		this.originName = originName;
	}

	public String getChangerName() {
		return changerName;
	}

	public void setChangerName(String changerName) {
		this.changerName = changerName;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
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
		return "admin [sellNum=" + sellNum + ", gId=" + gId + ", goodsTitle=" + goodsTitle + ", goodsContent="
				+ goodsContent + ", goodsImage=" + goodsImage + ", originName=" + originName + ", changerName="
				+ changerName + ", filePath=" + filePath + ", sellDate=" + sellDate + ", modifyDate=" + modifyDate
				+ ", status=" + status + "]";
	}

	
}
