package com.kh.awesome.order.controller;

import java.io.IOException;
import java.net.URLEncoder;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.awesome.admin.model.exception.AdminException;
import com.kh.awesome.admin.model.vo.Admin;
import com.kh.awesome.board.model.exception.BoardException;
import com.kh.awesome.board.model.vo.Answer;
import com.kh.awesome.board.model.vo.PageInfo;
import com.kh.awesome.cart.model.vo.Cart;
import com.kh.awesome.common.Pagination;
import com.kh.awesome.member.model.exception.MemberException;
import com.kh.awesome.member.model.vo.Member;
import com.kh.awesome.order.model.vo.Order;
import com.kh.awesome.order.model.vo.OrderSearch;
import com.kh.awesome.order.service.OrderService;

@Controller
public class OrderController {

	@Autowired
	OrderService oService;
	
	@RequestMapping("orderView.do")
	public ModelAndView abc(ModelAndView mv, @RequestParam(value = "page", required = false) Integer page,
			HttpServletRequest request, HttpSession session) {
		
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		Member loginUser = (Member) session.getAttribute("loginUser");
		int mId = loginUser.getMid();
		
		
		int listCount = oService.getOrderListCount(mId);
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		
		session = request.getSession(true);
		
		ArrayList<Order> list = oService.selectList(mId,pi); 
		
		System.out.println(listCount);
		System.out.println(pi);
		System.out.println(list);
		
		 if(list != null && list.size()>0) {
			mv.addObject("list", list);
			mv.addObject("pi", pi);
		 } 
			mv.setViewName("order/orderListView");
		return mv;
	}
	

	@RequestMapping("orderCount.do")
	public void orderCount(HttpServletRequest request, HttpServletResponse response)
			throws JsonIOException, IOException {

		HttpSession session = request.getSession(true);
		Member loginUser = (Member) session.getAttribute("loginUser");
		int mId = loginUser.getMid();

		int beforeCount = oService.beforeCount(mId);
		int deliverCount = oService.deliverCount(mId);
		int completeCount = oService.completeCount(mId);
		int cancelCount = oService.cancelCount(mId);

		int orderCount[] = { beforeCount, deliverCount, completeCount, cancelCount };
		// System.out.println(orderCount);

		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(orderCount, response.getWriter());

	}

	@RequestMapping("orderDetail.do")
	public ModelAndView orderDetail(ModelAndView mv, HttpServletRequest request, String orderNum, HttpServletResponse response) {
		// System.out.println(orderNum);
		ArrayList<Order> list = oService.orderDetail(orderNum);
		// System.out.println(list);
		
	
		if (list != null && list.size() > 0) {
			mv.addObject("list", list);
			mv.addObject("orderNum", orderNum);
			mv.setViewName("order/orderDetailView");
		}
		return mv;
	}

	@RequestMapping("cancelList.do")
	public ModelAndView cancelList(ModelAndView mv, HttpServletRequest request, String orderNum) {
		ArrayList<Order> list = oService.orderDetail(orderNum);
		if (list != null && list.size() > 0) {
			mv.addObject("list", list);
			mv.addObject("orderNum", orderNum);
			mv.setViewName("order/orderCancel");
		}
		return mv;
	}

	@RequestMapping("orderCancel.do")
	public void orderCancel( HttpServletResponse response, HttpServletRequest request, String oId) throws IOException {

		String[] arr;
		arr = oId.split("/");
		ArrayList oNum = new ArrayList();

	
		if (arr[0].equals("0")) {
			for (int i = 0; i < arr.length - 1; i++) {
				oNum.add(Integer.parseInt(arr[i + 1]));
			}
		} else {
			for (int i = 0; i < arr.length ; i++) {
				
				oNum.add(Integer.parseInt(arr[i]));
			}
		}
		
		for (int i = 0; i < oNum.size(); i++) {
			System.out.println(oNum.get(i));
			int number = (int) oNum.get(i);
			int result = oService.orderCancel(number);
			
			if(result>0) {
				Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
				gson.toJson(result, response.getWriter());
			}
		}

	}
	
	@RequestMapping("gichan.do")
	public void gichan(HttpServletResponse response, String orderNum) throws JsonIOException, IOException {
		//System.out.println(orderNum);
		ArrayList<Order> order = oService.orderDetail(orderNum);
		
		for(Order o :order) {
			o.setgName(URLEncoder.encode(o.getgName(), "utf-8"));	
			o.setGoodsTitle(URLEncoder.encode(o.getGoodsTitle(), "utf-8"));	
		}

		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(order, response.getWriter());

	}
	
	@RequestMapping("orderSearch.do")
	public ModelAndView boardList(ModelAndView mv, String date1, String date2, OrderSearch os,HttpSession session,HttpServletRequest request, @RequestParam(value = "page", required = false) Integer page) {
		
		Member loginUser = (Member) session.getAttribute("loginUser");
		int mid = loginUser.getMid();
		
		
		os.setDate1(date1);
		os.setDate2(date2);
		os.setMid(mid);
		
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		
		int listCount = oService.getOrderSearchCount(os);
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		session = request.getSession(true);
		/*
		 * System.out.println("들어오니?"); System.out.println(os);
		 */
		
		ArrayList<Order> list = oService.datePicker(os,pi); 
		
		System.out.println("searchController : " + list);
		
		System.out.println("파이"+pi);
		if(list != null && list.size()>0) {
			mv.addObject("os", os);
			mv.addObject("list", list);
			mv.addObject("pi", pi);
			mv.setViewName("order/orderSearchView");
		}else {
			mv.setViewName("order/emptyOrderSearch");
		}
		//System.out.println("searchController2 : " + list);
		return mv;
	}

	
	@RequestMapping("termSearch.do")
	public ModelAndView searchList(ModelAndView mv,String date3, String date4, OrderSearch os,HttpSession session,HttpServletRequest request, @RequestParam(value = "page", required = false) Integer page) {
		
		Member loginUser = (Member) session.getAttribute("loginUser");
		int mid = loginUser.getMid();
		
		
		os.setDate1(date3);
		os.setDate2(date4);
		os.setMid(mid);
		
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		
		int listCount = oService.getOrderSearchCount(os);
	
		
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		session = request.getSession(true);
		/*
		 * System.out.println("들어오니?"); System.out.println(os);
		 */
		
		ArrayList<Order> list = oService.datePicker(os,pi); 
		
		System.out.println("Order컨트롤, searchController : " + list);
		
		System.out.println("파이"+pi);
		if(list != null && list.size()>0) {
			mv.addObject("os", os);
			mv.addObject("list", list);
			mv.addObject("pi", pi);
			mv.setViewName("order/orderSearchView");
		}else {
			
			mv.setViewName("order/emptyOrderSearch");
		
		}
		//System.out.println("searchController2 : " + list);
		
		return mv;
	}
	
	
	
	// 동복 결제 진행중 ------------------------------------------------------------------------------------------------------------------------------------------------	
	
	
		// 동복 - 결제 화면으로 이동 Test
		@RequestMapping("paymentView.do")
		public ModelAndView paymentView(ModelAndView mv) {

			mv.setViewName("order/paymentView");

			return mv;
		}		
	
		
	      
	      

		
		   @ResponseBody   
		   @RequestMapping(value = "cartPayment.do")
			   public int cartPayment(HttpSession session, @RequestParam(value = "checkArr[]") List<String> checkArr, Order o) {
			      
				   System.out.println(" 카트 페이먼트 들어오니?");
				   System.out.println(checkArr);
				   System.out.println(o);
				   
			      Member loginUser = (Member)session.getAttribute("loginUser");
			      int mId = loginUser.getMid();

			      // 오늘 날짜를 검색해서 orderNum이 갱신된적이있는지 확인 
			      int checkOrderNumInfo = oService.checkOrderNumInfo();
			     
			      // 오늘날짜가 없다면 (즉, orderNum이 갱신된적이 없다면) 
			      if( checkOrderNumInfo < 1) { 
			    	  int createNewOrderNum = oService.createNewOrderNum();  //  새로운 orderNum생성 
			    	  
			      }
			      
			      // orderNum 시퀀스 증가! 
			       int nextOrderNum =  oService.nextOrderNum();
			      
			      o.setmId(mId);
			      o.setOrderStatus("B");
			      
			     for ( String cartNumStr: checkArr) {
			    	 	
			    	 int cartNum= Integer.parseInt(cartNumStr);
			    	 
			    	 Cart cartOne = oService.selectCartOne(cartNum);
			    	 
			    	 o.setgId(cartOne.getgId());
			    	 o.setOrderCount(cartOne.getCount());
			    	 
			    	 int result = oService.insertPaymentList(o);
			    	 System.out.println("result 결제완료 : " + result);	

			    	 	if(result > 0) {
							// 결제 테이블 생성 
							int result2 = oService.insertPayment(o);
							System.out.println("result2 결제완료 : " + result2);		
							//받는이 테이블 생성
							int result3 = oService.insertPaymentDinfo(o);
							System.out.println("result3 결제완료 : " + result3);					
							
						}
						
			    	
			    	 
			     }
		
			   //포인트 적립(결제시 사용포인트 차감 )
			 	int result4 = oService.updateMemberPoint(o);
				System.out.println("result4 결제완료 : " + result4);	
				
				loginUser = oService.selectMemberAsMid(mId);
				session.setAttribute("loginUser", loginUser);  // 멤버 포인트 변경했기 때문에 세션 새로 설정해줬음 
				
				return result4;
		   }
			   
		
		
		

		
		/*
		// 동복 - 결제 진행 ( TABLE INSERT && UPDATE )
		@RequestMapping("paymentViewSuccess.do")
		public ModelAndView paymentViewSuccess(ModelAndView mv, Order o, int usedPoint, String dName, String dAddress, String dPhone, int orderPrice ) {

			System.out.println(" gId : " + gId +", mId : " + mId +", orderCount : " + orderCount +", orderStatus : " + orderStatus +
			", usedPoint : " +usedPoint +", dName : " + dName +", dAddress : " + dAddress +", dPhone : " + dPhone +", orderPrice : " + orderPrice);

			o.setgId(gId);
			o.setmId(mId);
			o.setOrderCount(orderCount);
			o.setOrderStatus(orderStatus);
			
			o.setUsedPoint(usedPoint);
			o.setdName(dName);
			o.setdAddress(dAddress);
			o.setdPhone(dPhone);
			o.setOrderPrice(orderPrice);
			
			//주문 테이블 생성
			int result = oService.insertPaymentList(o);
			System.out.println("result 결제완료 : " + result);		
			
		// 위에 insertPaymentList 실행되면 만들어진 시퀀스 orderNum값 필요함  
			
			if(result > 0) {
				// 결제 테이블 생성 
				int result2 = oService.insertPayment(o);
				System.out.println("result2 결제완료 : " + result2);		
				//받는이 테이블 생성
				int result3 = oService.insertPaymentDinfo(o);
				System.out.println("result3 결제완료 : " + result3);					
				//포인트 적립(결제시 사용포인트 차감 )
				int result4 = oService.updateMemberPoint(o);
				System.out.println("result4 결제완료 : " + result4);					
				mv.setViewName("order/paymentView");
			}
			
			return mv;
		}	
	
	*/
	
	
	// 관리자 주문조회------------------------------------------------------------------------
		// 관리자용 주문목록 리스트 
		@RequestMapping("AdminorderList.do")
		public ModelAndView boardList(ModelAndView mv, @RequestParam(value="page", required=false) Integer page) {
			// 마이바티스 때 했던 PageInfo의 Pagination을 그대로 쓰자.
			
			// 페이지의 정보 없으면 디폴트 1로
			int currentPage = 1; 
			
			if(page != null) {
				currentPage = page;
			}
			
			// 전체글 갯수 조회 
			int listCount = oService.getListCount();
			//System.out.println(listCount);
			
			PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
			
			ArrayList<Order> adminOrderlist = oService.AdminOrderselectList(pi);
			
			System.out.println("관리자용 주문목록 조회" + adminOrderlist);
			
			if(adminOrderlist != null && adminOrderlist.size() > 0) {	
				mv.addObject("adminOrderlist", adminOrderlist);
				mv.addObject("pi", pi);
				mv.setViewName("admin/adminOrdeerList");
			} else{		  
				throw new MemberException("주문 목록 조회 실패!!");
			}
			return mv;
		}
		
			
	
		// 관리자용 주문리스트 배송 상태 수정
		@RequestMapping("StatusUpdate.do")	
		public String updateStatusUpdate(Order o, Model model, int orderNum, String orderStatus) {
			
			/*
			 	m.setMid(mId);
				m.setPoint(point);
			 */
			System.out.println("orderNum 는???" + orderNum);
			System.out.println("orderStatus 는???" + orderStatus);
			
			o.setOrderStatus(orderStatus);
			
			int result = oService.updateStatusUpdate(o);
			
			if(result > 0) {
				model.addAttribute("o" , o);
			} else {
				throw new MemberException("배송 상태 변경 실패!!");
			}
			
			return "redirect:AdminorderList.do";
		}
				
				
		//구매확정 나혜!!
		@RequestMapping("orderComplete.do")
		public void orderComplete(HttpServletResponse response, String orderNum, HttpServletRequest request, int usedPoint, int orderPrice, Order o ) throws JsonIOException, IOException {
			/*System.out.println("CONTROLLER: " + orderNum);*/
			int orderComplete = oService.orderComplete(orderNum);
			
			HttpSession session = request.getSession(true);
			Member loginUser = (Member) session.getAttribute("loginUser");
			int mId = loginUser.getMid();
			
			o.setmId(mId);
			o.setUsedPoint(usedPoint);
			o.setOrderPrice(orderPrice);
			
			System.out.println(o);
			int updatePoint = oService.updateMemberPoint(o);
			
			
			if(orderComplete>0) {
			Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
			gson.toJson( orderComplete, response.getWriter());
			}
		}
	
}
