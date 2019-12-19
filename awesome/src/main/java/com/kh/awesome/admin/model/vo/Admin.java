package com.kh.awesome.admin.model.vo;

import java.sql.Date;

public class Admin {
	private int sellNum;
	private int gId;
	private int mId;
	private String cateCd;
	private String goodsName;
	private String goodsTitle;
	private int goodsPrice;
	private int count;
	private String goodsContent;
	private String filePath;
	private String contentFilePath;
	private Date sellDate;
	private Date modifyDate;
	private String status;
	
	private String userId;
	private int rId;
	private String rContent;
	private int sellStart;
	private String ref_filePath;
	private Date createDate;
	
	public Admin() {
	}

	public Admin(int sellNum, int gId, int mId, String cateCd, String goodsName, String goodsTitle, int goodsPrice,
			int count, String goodsContent, String filePath, String contentFilePath, Date sellDate, Date modifyDate,
			String status, String userId, int rId, String rContent, int sellStart, String ref_filePath,
			Date createDate) {
		this.sellNum = sellNum;
		this.gId = gId;
		this.mId = mId;
		this.cateCd = cateCd;
		this.goodsName = goodsName;
		this.goodsTitle = goodsTitle;
		this.goodsPrice = goodsPrice;
		this.count = count;
		this.goodsContent = goodsContent;
		this.filePath = filePath;
		this.contentFilePath = contentFilePath;
		this.sellDate = sellDate;
		this.modifyDate = modifyDate;
		this.status = status;
		this.userId = userId;
		this.rId = rId;
		this.rContent = rContent;
		this.sellStart = sellStart;
		this.ref_filePath = ref_filePath;
		this.createDate = createDate;
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

	public String getCateCd() {
		return cateCd;
	}

	public void setCateCd(String cateCd) {
		this.cateCd = cateCd;
	}

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
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

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getrId() {
		return rId;
	}

	public void setrId(int rId) {
		this.rId = rId;
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

	public String getRef_filePath() {
		return ref_filePath;
	}

	public void setRef_filePath(String ref_filePath) {
		this.ref_filePath = ref_filePath;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	@Override
	public String toString() {
		return "Admin [sellNum=" + sellNum + ", gId=" + gId + ", mId=" + mId + ", cateCd=" + cateCd + ", goodsName="
				+ goodsName + ", goodsTitle=" + goodsTitle + ", goodsPrice=" + goodsPrice + ", count=" + count
				+ ", goodsContent=" + goodsContent + ", filePath=" + filePath + ", contentFilePath=" + contentFilePath
				+ ", sellDate=" + sellDate + ", modifyDate=" + modifyDate + ", status=" + status + ", userId=" + userId
				+ ", rId=" + rId + ", rContent=" + rContent + ", sellStart=" + sellStart + ", ref_filePath="
				+ ref_filePath + ", createDate=" + createDate + "]";
	}

	


}
