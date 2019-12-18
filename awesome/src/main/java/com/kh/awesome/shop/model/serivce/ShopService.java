package com.kh.awesome.shop.model.serivce;

import java.util.ArrayList;

import com.kh.awesome.admin.model.vo.Admin;
import com.kh.awesome.shop.model.vo.SellReply;

public interface ShopService {

	int sellafterInsert(SellReply sr);
	
	ArrayList<SellReply> sellafterSelectList();

	ArrayList<SellReply> selectReply(int sellNum);
	
	// 카트에 상품 추가
	/* int CartInsert(Cart2 c); */


}
