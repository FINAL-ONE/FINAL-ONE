package com.kh.awesome.cart.model.vo;

import java.io.Serializable;

public class CartList implements Serializable{
   /**
    * 
    */
   private static final long serialVersionUID = -4857349693191579439L;
   private int cartNum;   // 카트 번호 시퀀스 넘버
   private int gId;      // 상품 번호
   private int mId;      // 유저 
   private int count;      // 상품 수량
   
   
   private String goodsName;   // 상품 이름
   private int goodsPrice;      // 상품 가격
   private String filePath;   // 이미지
   private String soldout;      // 품절되었는지??
   private String name;
   private String phone;
   private String address;
   private int point;
   
   public CartList() {
      
   }

   public CartList(int cartNum, int gId, int mId, int count, String goodsName, int goodsPrice, String filePath,
         String soldout, String name, String phone, String address, int point) {
      super();
      this.cartNum = cartNum;
      this.gId = gId;
      this.mId = mId;
      this.count = count;
      this.goodsName = goodsName;
      this.goodsPrice = goodsPrice;
      this.filePath = filePath;
      this.soldout = soldout;
      this.name = name;
      this.phone = phone;
      this.address = address;
      this.point = point;
   }

   public int getCartNum() {
      return cartNum;
   }

   public void setCartNum(int cartNum) {
      this.cartNum = cartNum;
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

   public int getCount() {
      return count;
   }

   public void setCount(int count) {
      this.count = count;
   }

   public String getGoodsName() {
      return goodsName;
   }

   public void setGoodsName(String goodsName) {
      this.goodsName = goodsName;
   }

   public int getGoodsPrice() {
      return goodsPrice;
   }

   public void setGoodsPrice(int goodsPrice) {
      this.goodsPrice = goodsPrice;
   }

   public String getFilePath() {
      return filePath;
   }

   public void setFilePath(String filePath) {
      this.filePath = filePath;
   }

   public String getSoldout() {
      return soldout;
   }

   public void setSoldout(String soldout) {
      this.soldout = soldout;
   }

   public String getName() {
      return name;
   }

   public void setName(String name) {
      this.name = name;
   }

   public String getPhone() {
      return phone;
   }

   public void setPhone(String phone) {
      this.phone = phone;
   }

   public String getAddress() {
      return address;
   }

   public void setAddress(String address) {
      this.address = address;
   }

   public int getPoint() {
      return point;
   }

   public void setPoint(int point) {
      this.point = point;
   }

   public static long getSerialversionuid() {
      return serialVersionUID;
   }

   @Override
   public String toString() {
      return "CartList [cartNum=" + cartNum + ", gId=" + gId + ", mId=" + mId + ", count=" + count + ", goodsName="
            + goodsName + ", goodsPrice=" + goodsPrice + ", filePath=" + filePath + ", soldout=" + soldout
            + ", name=" + name + ", phone=" + phone + ", address=" + address + ", point=" + point + "]";
   }

   
}