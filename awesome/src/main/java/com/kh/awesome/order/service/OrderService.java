package com.kh.awesome.order.service;

import java.util.ArrayList;

import com.kh.awesome.board.model.vo.PageInfo;
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







}
