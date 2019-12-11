package com.kh.awesome.shop.model.vo;

import java.sql.Date;

public class SellReply {
   private int rId;
   private int sellNum;
   private int gId;
   private String cateCd;
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

   public SellReply(int rId, int sellNum, int gId, String cateCd, int mId, String rContent, int sellStart,
         String filePath, String contentFilePath, Date createDate, Date modifyDate, String status) {
      this.rId = rId;
      this.sellNum = sellNum;
      this.gId = gId;
      this.cateCd = cateCd;
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
      return "SellReply [rId=" + rId + ", sellNum=" + sellNum + ", gId=" + gId + ", cateCd=" + cateCd + ", mId=" + mId
            + ", rContent=" + rContent + ", sellStart=" + sellStart + ", filePath=" + filePath
            + ", contentFilePath=" + contentFilePath + ", createDate=" + createDate + ", modifyDate=" + modifyDate
            + ", status=" + status + "]";
   }
   
   
   
   
   
}