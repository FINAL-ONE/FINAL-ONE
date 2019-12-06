package com.kh.awesome.cart.model.service;

import java.util.ArrayList;
import java.util.List;

import com.kh.awesome.cart.model.vo.Cart;

public interface CartService {

	//ArrayList<Cart> cartList(String userId);
	
	/*
	 *  장바구니 불러오기
	 */
	public List<Cart> cartList(int mId);
	
	
	
	
	

}
