package com.kh.awesome.shop.model.serivce;

import java.util.ArrayList;

import com.kh.awesome.admin.model.vo.Admin;
import com.kh.awesome.shop.model.vo.Cart;
import com.kh.awesome.shop.model.vo.SellReply;

public interface ShopService {

	int sellafterInsert(SellReply sr);
	
	ArrayList<SellReply> sellafterSelectList();

	ArrayList<SellReply> selectReply(int sellNum);
	
	// 카트에 상품 추가
	int CartInsert(Cart c);
	
	// 상품별 후기 조회하기
	ArrayList<SellReply> stargIdSelect(int gId);
	
	// 상품별 후기 평균
	ArrayList<SellReply> sAvgListSelect(int gId);
	
	// 내 상품후기 조회
	ArrayList<SellReply> myafterSelectList(int mid);
	

}
