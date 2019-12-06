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

}
