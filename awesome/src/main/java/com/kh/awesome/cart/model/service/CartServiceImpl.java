package com.kh.awesome.cart.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.awesome.cart.model.dao.CartDao;
import com.kh.awesome.cart.model.vo.Buyer;
import com.kh.awesome.cart.model.vo.Cart;
import com.kh.awesome.cart.model.vo.CartList;
import com.kh.awesome.member.model.vo.Member;

@Service
public class CartServiceImpl implements CartService{

	@Autowired
	CartDao cDao;

	@Override
	public List<CartList> cartList(Member loginUser) throws Exception {
		return cDao.cartList(loginUser);
	}

	@Override
	public void deleteCart(Cart cart) {
		cDao.deleteCart(cart);
	}

	@Override
	public ArrayList<Buyer> buyer(int mId) {
		return cDao.buyer(mId);
	}

	@Override
	public int CartInsert(Cart c) {
		return cDao.CartInsert(c);
	}

	// 동복 - 장바구니 클릭시 해당 상품이 이미 장바구니에 있으면 체크
	@Override
	public int selectCartCheck(Cart a) {
		return cDao.selectCartCheck(a);
	}
	
}
