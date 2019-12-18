package com.kh.awesome.cart.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.awesome.cart.model.vo.Buyer;
import com.kh.awesome.cart.model.vo.Cart;
import com.kh.awesome.cart.model.vo.CartList;

@Repository("cDao")
public class CartDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	public List<CartList> cartList(int mId) {
		return sqlSession.selectList("cartMapper.cartList", mId);
	}

	public void deleteCart(Cart cart) {
		sqlSession.delete("cartMapper.deleteCart", cart);
	}

	public ArrayList<Cart> deliveryInfo(int mId) {
		return (ArrayList)sqlSession.selectList("cartMapper.deliveryInfo", mId);
	}

	public ArrayList<Buyer> buyer(int mId) {
		return (ArrayList)sqlSession.selectOne("cartMapper.buyerinfo", mId);
	}


}
