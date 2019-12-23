package com.kh.awesome.cart.model.service;

import java.util.ArrayList;
import java.util.List;

import com.kh.awesome.cart.model.vo.Buyer;
import com.kh.awesome.cart.model.vo.Cart;
import com.kh.awesome.cart.model.vo.CartList;
import com.kh.awesome.member.model.vo.Member;
import com.kh.awesome.order.model.vo.Order;

public interface CartService {

	/*
	 *  장바구니 view
	 */
//	ArrayList<CartList> selectList(int mId);

	
	/*
	 *  장바구니 불러오기
	 */
//	public List<Cart> cartList(int mId);
	
	// 카트 리스트
	public List<CartList> cartList(Member loginUser) throws Exception;

	// 카트 삭제
	public void deleteCart(Cart cart);


	public ArrayList<Buyer> buyer(int mId);

	public int CartInsert(Cart c);
	
	// 동복 - 장바구니 클릭시 해당 상품이 이미 장바구니에 있으면 체크
	public int selectCartCheck(Cart a);
	
	

}
