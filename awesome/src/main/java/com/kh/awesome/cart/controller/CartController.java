package com.kh.awesome.cart.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;import org.springframework.web.server.adapter.HttpWebHandlerAdapter;
import org.springframework.web.servlet.ModelAndView;

import com.kh.awesome.cart.model.service.CartService;
import com.kh.awesome.cart.model.vo.Cart;
import com.kh.awesome.member.model.vo.Member;

@Controller
public class CartController {
	
	@Autowired
	CartService cService;
	
	/**
	 *	다신에서 따온 View
	 * @return
	 */
	@RequestMapping("cartView.do")
	public String cartView() {
		return "cart/cartView";
	}
	
	/**
	 *	장바구니 목록
	 * @param session
	 * @param mv
	 * @return
	 */
	
	@RequestMapping("cartList.do")
	public ModelAndView list(Cart c, HttpSession session, ModelAndView mv, HttpServletResponse response) {
		
		response.setContentType("application/json;charset=utf-8");
		
		// 로그인 한 사람의 정보를 뽑아내기 위해서 session 사용
		Member loginUser = (Member)session.getAttribute("loginUser");
		
		// 현재 로그인 한 유저로 mid 값 set
		c.setMid(loginUser.getMid()); 
		
		
		
		
		
		return mv;
		
	}

}


















