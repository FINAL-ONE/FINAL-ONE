package com.kh.awesome.order.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.awesome.board.model.vo.PageInfo;
import com.kh.awesome.cart.model.vo.Cart;
import com.kh.awesome.member.model.vo.Member;
import com.kh.awesome.order.model.dao.OrderDao;
import com.kh.awesome.order.model.vo.Order;
import com.kh.awesome.order.model.vo.OrderSearch;

@Service("oService")
public class OrderServiceImpl implements OrderService{

	@Autowired
	OrderDao oDao;
	

	@Override
	public ArrayList<Order> selectList(int mId,PageInfo pi) {
		return oDao.selectList(mId, pi);
	}



	@Override
	public int beforeCount(int mId) {

		return oDao.beforeCount(mId);
	}



	@Override
	public int deliverCount(int mId) {

		return oDao.deliverCount(mId);
	}



	@Override
	public int completeCount(int mId) {
		return oDao.completeCount(mId);
	}



	@Override
	public int cancelCount(int mId) {
		return oDao.cancelCount(mId);
	}



	@Override
	public ArrayList<Order> orderDetail(String orderNum) {
		return oDao.orderDetail(orderNum);
	}



	@Override
	public int orderCancel(int number) {
		return oDao.orderCancel(number);
	}



	@Override
	public int getOrderListCount(int mId) {
		
		return oDao.getOrderListCount(mId);
	}



	@Override
	public ArrayList<Order> datePicker(OrderSearch os,PageInfo pi) {
		return oDao.datePicker(os,pi);
	}



	@Override
	public int getOrderSearchCount(OrderSearch os) {
		return oDao.getOrderSearchCount(os);
	}



	//---------------------------- INSERT ----------------------------	
	// 동복 - 결제 진행 ( TABLE INSERT && UPDATE )
	@Override
	public int insertPaymentList(Order o) {
		return oDao.insertPaymentList(o);
	}
	@Override
	public int insertPayment(Order o) {
		return oDao.insertPayment(o);
	}
	@Override
	public int insertPaymentDinfo(Order o) {
		return oDao.insertPaymentDinfo(o);
	}
	@Override
	public int updateMemberPoint(Order o) {
		return oDao.updateMemberPoint(o);
	}
	
	

	// 관리자 주문리스트 전체 갯수 
	@Override
	public int getListCount() {
		return oDao.getListCount();
	}


	// 관리자용 주문 리스트 
	@Override
	public ArrayList<Order> AdminOrderselectList(PageInfo pi) {
		return oDao.AdminOrderselectList(pi);
	}


	// 관리자 배송상태 변경
	@Override
	public int updateStatusUpdate(Order o) {
		return oDao.updateStatusUpdate(o);
	}


	@Override
	public Cart selectCartOne(int cartNum) {
		return oDao.selectCartOne(cartNum);
	}



	@Override
	public int checkOrderNumInfo() {
		return oDao.checkOrderNumInfo();
	}



	@Override
	public int createNewOrderNum() {
		return oDao.createNewOrderNum();
	}



	@Override
	public int nextOrderNum() {
		return oDao.nextOrderNum();
	}



	@Override
	public Member selectMemberAsMid(int mId) {
		return oDao.selectMemberAsMid(mId);
	}

	@Override
	public int orderComplete(String orderNum) {
		return oDao.orderComplete(orderNum);
	}
	

}
