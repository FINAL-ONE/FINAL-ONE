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

	@Override
	public int addAmount(int cartNum) {
		return cDao.addAmount(cartNum);
	}

	@Override
	public int subAmount(int cartNum) {
		return cDao.subAmount(cartNum);
	}


}
