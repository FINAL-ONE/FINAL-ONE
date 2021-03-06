package com.kh.awesome.cart.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.awesome.cart.model.vo.Buyer;
import com.kh.awesome.cart.model.vo.Cart;
import com.kh.awesome.cart.model.vo.CartList;
import com.kh.awesome.member.model.vo.Member;

@Repository("cDao")
public class CartDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	public List<CartList> cartList(Member loginUser) {
		System.out.println("list mId : " + loginUser);
		return sqlSession.selectList("cartMapper.cartList", loginUser);
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

	public int CartInsert(Cart c) {
		return sqlSession.insert("cartMapper.CartInsert", c);
	}

	public int addAmount(int cartNum) {
		return sqlSession.update("addAmount", cartNum);
	}

	public int subAmount(int cartNum) {
		return sqlSession.update("subAmount", cartNum);
	}

	// 동복 - 장바구니 클릭시 해당 상품이 이미 장바구니에 있으면 체크
	public int selectCartCheck(Cart a) {
		return sqlSession.selectOne("cartMapper.selectCartCheck", a);
	}
}
