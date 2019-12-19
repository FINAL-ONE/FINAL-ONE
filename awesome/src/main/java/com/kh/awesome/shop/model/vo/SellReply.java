package com.kh.awesome.shop.model.vo;

import java.sql.Date;


public class SellReply {
	private int rId;
	private int sellNum;
	private int gId;
	private String cateCd;
	private int mId;
	private String goodsTitle;
	private String rContent;
	private int sellStart;
	private String ref_filePath;
	private String ref_contentFilePath;
	private Date createDate;
	private Date modifyDate;
	private String status;
	
	private String userId;
	
	private int goodsPrice;
	private int count;
	private String goodsContent;
	private String filePath;
	private String contentFilePath;
	private Date sellDate;
	
	public SellReply() {
	}

	public SellReply(int rId, int sellNum, int gId, String cateCd, int mId, String goodsTitle, String rContent,
			int sellStart, String ref_filePath, String ref_contentFilePath, Date createDate, Date modifyDate,
			String status, String userId, int goodsPrice, int count, String goodsContent, String filePath,
			String contentFilePath, Date sellDate) {
		this.rId = rId;
		this.sellNum = sellNum;
		this.gId = gId;
		this.cateCd = cateCd;
		this.mId = mId;
		this.goodsTitle = goodsTitle;
		this.rContent = rContent;
		this.sellStart = sellStart;
		this.ref_filePath = ref_filePath;
		this.ref_contentFilePath = ref_contentFilePath;
		this.createDate = createDate;
		this.modifyDate = modifyDate;
		this.status = status;
		this.userId = userId;
		this.goodsPrice = goodsPrice;
		this.count = count;
		this.goodsContent = goodsContent;
		this.filePath = filePath;
		this.contentFilePath = contentFilePath;
		this.sellDate = sellDate;
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

	public String getCateCd() {
		return cateCd;
	}

	public void setCateCd(String cateCd) {
		this.cateCd = cateCd;
	}

	public int getmId() {
		return mId;
	}

	public void setmId(int mId) {
		this.mId = mId;
	}

	public String getGoodsTitle() {
		return goodsTitle;
	}

	public void setGoodsTitle(String goodsTitle) {
		this.goodsTitle = goodsTitle;
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

	public String getRef_contentFilePath() {
		return ref_contentFilePath;
	}

	public void setRef_contentFilePath(String ref_contentFilePath) {
		this.ref_contentFilePath = ref_contentFilePath;
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

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
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

	@Override
	public String toString() {
		return "SellReply [rId=" + rId + ", sellNum=" + sellNum + ", gId=" + gId + ", cateCd=" + cateCd + ", mId=" + mId
				+ ", goodsTitle=" + goodsTitle + ", rContent=" + rContent + ", sellStart=" + sellStart
				+ ", ref_filePath=" + ref_filePath + ", ref_contentFilePath=" + ref_contentFilePath + ", createDate="
				+ createDate + ", modifyDate=" + modifyDate + ", status=" + status + ", userId=" + userId
				+ ", goodsPrice=" + goodsPrice + ", count=" + count + ", goodsContent=" + goodsContent + ", filePath="
				+ filePath + ", contentFilePath=" + contentFilePath + ", sellDate=" + sellDate + "]";
	}

	
	
}
