package com.kh.awesome.shop.model.serivce;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.awesome.admin.model.vo.Admin;
import com.kh.awesome.shop.model.dao.ShopDao;
import com.kh.awesome.shop.model.vo.SellReply;


@Service("ShopService")
public class ShopServiceImpl implements ShopService {
	
	@Autowired
	ShopDao ShopDao;
	
	
	// 후기 작성

	@Override
	public int sellafterInsert(SellReply sr) {
		
		return ShopDao.sellafterInsert(sr);
	}


	// 후기목록 불러오기
	@Override
	public ArrayList<SellReply> sellafterSelectList() {

		return ShopDao.sellafterSelectList();
	}

	// 해당 상품의 후기 목록
	@Override
	public ArrayList<SellReply> selectReply(int sellNum) {

		return ShopDao.selectReply(sellNum);
	}

	// 카트에 상품 추가
	/*
	 * @Override public int CartInsert(Cart2 c) {
	 * 
	 * return ShopDao.CartInsert(c); }
	 */

	// 상품별 후기 조회
	@Override
	public ArrayList<SellReply> stargIdSelect(int gId) {
		return ShopDao.stargIdSelect(gId);
	}

	
	// 상품별 후기 평균
	@Override
	public ArrayList<SellReply> sAvgListSelect(int gId) {
		return ShopDao.sAvgListSelect(gId);
	}

	// 내 후기조회
	@Override
	public ArrayList<SellReply> myafterSelectList(int mid) {
		return ShopDao.myafterSelectList(mid);
	}



}
