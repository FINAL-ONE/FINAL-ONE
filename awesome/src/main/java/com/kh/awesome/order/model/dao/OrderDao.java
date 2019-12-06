package com.kh.awesome.order.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.awesome.order.model.vo.Order;

@Repository("oDao")
public class OrderDao {
	@Autowired
	SqlSessionTemplate sqlSession;


		public ArrayList<Order> selectList(int mId) {

			return (ArrayList)sqlSession.selectList("orderMapper.selectOrder",mId);
		}


		public int beforeCount(int mId) {
			return sqlSession.selectOne("orderMapper.beforeCount", mId);
		}


		public int deliverCount(int mId) {
			return sqlSession.selectOne("orderMapper.deliverCount", mId);
		}


		public int completeCount(int mId) {
			return sqlSession.selectOne("orderMapper.completeCount", mId);
		}


		public int cancelCount(int mId) {
			return sqlSession.selectOne("orderMapper.cancelCount", mId);
		}


		public ArrayList<Order> orderDetail(String orderNum) {
			return (ArrayList)sqlSession.selectList("orderMapper.orderDetail",  orderNum);
		}


		public int orderCancel(int number) {
			return sqlSession.update("orderMapper.orderCancel", number);
		}








}
