package com.kh.awesome.order.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.awesome.order.model.dao.OrderDao;
import com.kh.awesome.order.model.vo.Order;

@Service("oService")
public class OrderServiceImpl implements OrderService{

	@Autowired
	OrderDao oDao;
	


	@Override
	public ArrayList<Order> selectList(int mId) {
		return oDao.selectList(mId);
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



}
