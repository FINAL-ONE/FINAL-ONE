package com.kh.awesome.cart.controller;

import java.util.ArrayList;
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
import org.springframework.web.server.adapter.HttpWebHandlerAdapter;
import org.springframework.web.servlet.ModelAndView;

import com.kh.awesome.cart.model.service.CartService;
import com.kh.awesome.cart.model.vo.Cart;
import com.kh.awesome.cart.model.vo.CartList;
import com.kh.awesome.member.model.exception.MemberException;
import com.kh.awesome.member.model.vo.Member;
import com.kh.awesome.order.model.vo.Order;
import com.sun.media.jfxmedia.logging.Logger;

@Controller
public class CartController {
	
	@Autowired
	CartService cService;
	

	// 카트 목록
	@RequestMapping("cartList.do")
	public ModelAndView getCartList(HttpSession session, ModelAndView mv) throws Exception {
		
		Member loginUser = (Member)session.getAttribute("loginUser");
		int mId = loginUser.getMid();
		
		List<CartList> cartList = cService.cartList(mId);
		System.out.println("controller 카트리스트 : " + cartList);
		
		
		
		mv.addObject("cartList", cartList);
		mv.setViewName("cart/cartList");
		return mv;
	}
		
		
	// 카트 삭제
	@ResponseBody
	@RequestMapping(value = "deleteCart.do", method = RequestMethod.POST)
	public int deleteCart(HttpSession session, @RequestParam(value = "chbox[]") List<String> chArr, Cart cart) throws Exception {
		
		Member loginUser = (Member)session.getAttribute("loginUser");
		int mId = loginUser.getMid();
		
		int result = 0;
		int cartNum = 0;		
		
		// 로그인 여부 구분
		if(loginUser != null) {
			cart.setMid(mId);
			
			for(String i : chArr) {  // 에이젝스에서 받은 chArr의 갯수만큼 반복
				cartNum = Integer.parseInt(i);  // i번째 데이터를 cartNum에 저장
				cart.setCartNum(cartNum);
				cService.deleteCart(cart);
			}			
			result = 1;
		}		
		return result;		
	}
	
	@RequestMapping("payment.do")
		public ModelAndView payment(String name, String address, String phone, int point, ModelAndView mv, HttpServletResponse response) {
	      
	      
		System.out.println(name+","+ address+","+ phone+","+point);
	  
	  return mv;
	
	}
	
	
	
	/**
	 *	장바구니 목록
	 * @param session
	 * @param mv
	 * @return
	 */
	
	@RequestMapping("cartList2.do")
	public ModelAndView list(Cart c, HttpSession session, ModelAndView mv, HttpServletResponse response) {
		
		response.setContentType("application/json;charset=utf-8");
		
		// 로그인 한 사람의 정보를 뽑아내기 위해서 session 사용
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		// 현재 로그인 한 유저로 mid 값 set
		c.setMid(loginUser.getMid()); 
		
		
		
		
		
		return mv;
		
	}

}


















