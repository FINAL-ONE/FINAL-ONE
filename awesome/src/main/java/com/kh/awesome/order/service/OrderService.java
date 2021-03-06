package com.kh.awesome.order.service;

import java.util.ArrayList;

import com.kh.awesome.board.model.vo.PageInfo;
import com.kh.awesome.cart.model.vo.Cart;
import com.kh.awesome.member.model.vo.Member;
import com.kh.awesome.order.model.vo.Order;
import com.kh.awesome.order.model.vo.OrderSearch;

public interface OrderService {


	ArrayList<Order> selectList(int mId, PageInfo pi);


	int beforeCount(int mId);


	int deliverCount(int mId);


	int completeCount(int mId);


	int cancelCount(int mId);


	ArrayList<Order> orderDetail(String orderNum);


	int orderCancel(int number);


	int getOrderListCount(int mId);


	ArrayList<Order> datePicker(OrderSearch os, PageInfo pi);


	int getOrderSearchCount(OrderSearch os);





	//---------------------------- INSERT ----------------------------	
	// 동복 - 결제 진행 ( TABLE INSERT && UPDATE )
	int insertPaymentList(Order o);
	
	int insertPayment(Order o);
	
	int insertPaymentDinfo(Order o);
	
	int updateMemberPoint(Order o);

	Cart selectCartOne(int cartNum);


	int checkOrderNumInfo();


	int createNewOrderNum();


	int nextOrderNum();


	Member selectMemberAsMid(int mId);

	
	
	
	
	
	
	
	// -------------------------------
	// 준배 - 관리자용 주문 리스트 전체갯수
	int getListCount();

	// 관리자용 주문 리스트 
	ArrayList<Order> AdminOrderselectList(PageInfo pi);

	// 관리자 배송상태 변경
	int updateStatusUpdate(Order o);

	//구매홧정
	int orderComplete(String orderNum);


	int insertPoint(Order o);


	ArrayList<Order> gichanDetail(String orderNum);

}
