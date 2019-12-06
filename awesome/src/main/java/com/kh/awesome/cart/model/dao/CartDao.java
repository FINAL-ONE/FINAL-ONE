package com.kh.awesome.cart.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.awesome.cart.model.vo.Cart;

@Repository("cDao")
public class CartDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	
	public Cart cartList(int mId) {
		
		return (ArrayList)sqlSession.selectList("cartMapper.selectCartList", mId);
	}

}
