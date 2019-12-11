package com.kh.awesome.cart.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.awesome.cart.model.dao.CartDao;
import com.kh.awesome.cart.model.vo.Cart;

@Service
public class CartServiceImpl implements CartService{

	@Autowired
	CartDao cDao;

	@Override
	public Cart cartList(int mId) {
		
		return cDao.cartList(mId);
	}

//	@Override
//	public ArrayList<Cart> cartList(String userId) {
//		// TODO Auto-generated method stub
//		return null;
//	}
}
