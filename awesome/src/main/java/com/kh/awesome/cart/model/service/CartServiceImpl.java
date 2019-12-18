package com.kh.awesome.cart.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.awesome.cart.model.dao.CartDao;
import com.kh.awesome.cart.model.vo.Buyer;
import com.kh.awesome.cart.model.vo.Cart;
import com.kh.awesome.cart.model.vo.CartList;

@Service
public class CartServiceImpl implements CartService{

	@Autowired
	CartDao cDao;

	@Override
	public List<CartList> cartList(int mId) throws Exception {
		return cDao.cartList(mId);
	}

	@Override
	public void deleteCart(Cart cart) {
		cDao.deleteCart(cart);
	}

	@Override
	public ArrayList<Buyer> buyer(int mId) {
		return cDao.buyer(mId);
	}


}
