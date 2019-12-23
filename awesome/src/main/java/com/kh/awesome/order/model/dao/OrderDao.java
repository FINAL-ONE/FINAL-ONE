package com.kh.awesome.order.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.awesome.board.model.vo.PageInfo;
import com.kh.awesome.cart.model.vo.Cart;
import com.kh.awesome.member.model.vo.Member;
import com.kh.awesome.order.model.vo.Order;
import com.kh.awesome.order.model.vo.OrderSearch;

@Repository("oDao")
public class OrderDao {
	@Autowired
	SqlSessionTemplate sqlSession;


		public ArrayList<Order> selectList(int mId, PageInfo pi) {

			int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
			RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
			
			return (ArrayList)sqlSession.selectList("orderMapper.selectOrder",mId, rowBounds);
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


		public int getOrderListCount(int mId) {
			// TODO Auto-generated method stub
			return sqlSession.selectOne("orderMapper.getOrderListCount", mId);
		}


		public ArrayList<Order> datePicker(OrderSearch os, PageInfo pi) {
			
			int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
			RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
			System.out.println("searchDao : " + os);
			return (ArrayList)sqlSession.selectList("orderMapper.getOrderSearch", os, rowBounds);
		}

		
		
		public int getOrderSearchCount(OrderSearch os) {
			return sqlSession.selectOne("orderMapper.getOrderSearchCount",os );
		}
		



		//---------------------------- INSERT ----------------------------	
		// 동복 - 결제 진행 ( TABLE INSERT && UPDATE )
		public int insertPaymentList(Order o) {
			return sqlSession.insert("orderMapper.insertPaymentList", o);
		}
		public int insertPayment(Order o) {
			return sqlSession.insert("orderMapper.insertPayment", o);
		}
		public int insertPaymentDinfo(Order o) {
			return sqlSession.insert("orderMapper.insertPaymentDinfo", o);
		}
		public int updateMemberPoint(Order o) {
			return sqlSession.update("orderMapper.updateMemberPoint", o);
		}

		
		//-------------- 호관 

		public Cart selectCartOne(int cartNum) {
			return sqlSession.selectOne("cartMapper.selectCartOne", cartNum);
		}
		
		
		public int checkOrderNumInfo() {
			return sqlSession.selectOne("orderMapper.checkOrderNumInfo");
		}


		public int createNewOrderNum() {
			
			 sqlSession.selectOne("orderMapper.dropOrderNum");
		    sqlSession.selectOne("orderMapper.createOrderNum");
				
			return sqlSession.update("orderMapper.updateOrderNumInfo");
		}

		public int nextOrderNum() {
			return sqlSession.selectOne("orderMapper.nextOrderNum");
		}


		public Member selectMemberAsMid(int mId) {
			return sqlSession.selectOne("memberMapper.selectMemberAsMid", mId);
		}
		
		
		
		// 관리자용 주문 리스트 전체 갯수 
		public int getListCount() {
			return sqlSession.selectOne("orderMapper.getListCount");
		}

		// 관리자용 주문 리스트 
		public ArrayList<Order> AdminOrderselectList(PageInfo pi) {
			int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();

			RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
			
			return (ArrayList)sqlSession.selectList("orderMapper.AdminOrderselectList", null, rowBounds);
		}

		// 관리자 배송상태 변경
		public int updateStatusUpdate(Order o) {
			return sqlSession.update("orderMapper.updateStatusUpdate", o);
		}

}
