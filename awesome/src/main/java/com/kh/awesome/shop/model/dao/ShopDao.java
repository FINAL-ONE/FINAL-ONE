package com.kh.awesome.shop.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.awesome.admin.model.vo.Admin;
import com.kh.awesome.shop.model.vo.SellReply;

@Repository("ShopDao")
public class ShopDao {

	@Autowired
	SqlSessionTemplate sqlSession;
	

	public int sellafterInsert(SellReply sr) {
		
		return sqlSession.insert("shopMapper.insertSellAftergoods", sr);
	}
	
	public ArrayList<SellReply> sellafterSelectList() {

		return (ArrayList)sqlSession.selectList("shopMapper.sellafterSelectList");
	}

	public ArrayList<SellReply> selectReply(int sellNum) {
		return (ArrayList)sqlSession.selectList("shopMapper.selectReply", sellNum);
	}
	
	// 카트에 상품 추가
	/*
	 * public int CartInsert(Cart2 c) {
	 * 
	 * return sqlSession.insert("shopMapper.CartInsert", c); }
	 */
	
	// 상품별 후기 조회
	public ArrayList<SellReply> stargIdSelect(int gId) {
		return (ArrayList)sqlSession.selectList("shopMapper.gIdViewList", gId);
	}
	
	// 상품별 후기 평균
	public ArrayList<SellReply> sAvgListSelect(int gId) {
		return (ArrayList)sqlSession.selectList("shopMapper.starAvgCount", gId);
	}

	// 내 후기 조회
	public ArrayList<SellReply> myafterSelectList(int mid) {
		return (ArrayList)sqlSession.selectList("shopMapper.myafterSelectList", mid);
	}
	
	// 내후기 삭제
	public int myafterDelete(String userId) {
		return sqlSession.update("shopMapper.myafterDelete", userId);
	}


	
}
