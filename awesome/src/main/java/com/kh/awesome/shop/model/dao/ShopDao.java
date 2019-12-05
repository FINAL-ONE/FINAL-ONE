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
	
}
