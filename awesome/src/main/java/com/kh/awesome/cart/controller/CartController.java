package com.kh.awesome.cart.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

import com.google.gson.JsonIOException;
import com.kh.awesome.admin.model.vo.Admin;
import com.kh.awesome.cart.model.exception.CartException;
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
      
      List<CartList> cartList = cService.cartList(loginUser);
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
         cart.setmId(mId);
         
         for(String i : chArr) {  // 에이젝스에서 받은 chArr의 갯수만큼 반복
            cartNum = Integer.parseInt(i);  // i번째 데이터를 cartNum에 저장
            cart.setCartNum(cartNum);
            cService.deleteCart(cart);
         }         
         result = 1;
      }      
      return result;      
   }
   

   // 카트에 상품 추가
      @RequestMapping("goCart.do")
      public String goodsgoCartView(HttpServletRequest request, Cart c, Admin a) {
         
         /* ArrayList<Cart> list = ShopService.selectList(); */
         System.out.println("Cart : " + c);
         System.out.println("Admin : " + a);
         
         int result = cService.CartInsert(c);
         System.out.println(result);
         
         
         if(result > 0 ) {
            return "redirect:cartList.do";
         } else {
            throw new CartException("장바구니 이동 실패!!");
         }   
      }
 
		// 동복 - 장바구니 클릭시 해당 상품이 이미 장바구니에 있으면 체크
		@RequestMapping("selectCartCheck.do")
		public ModelAndView selectCartCheck(HttpServletResponse response,  int mId, int gId, ModelAndView mv, Cart a ) throws JsonIOException, IOException {
			Map map = new HashMap();
			
			a.setmId(mId);
			a.setgId(gId);
			
			boolean isUsable = cService.selectCartCheck(a) == 0? true : false;
System.out.println("isUsable : " + isUsable);
			map.put("isUsable", isUsable);
			
			mv.addAllObjects(map);
			
			mv.setViewName("jsonView");
			
			return mv;
		}
 
   /*
    * // 카트 뷰로 이동
    * 
    * @RequestMapping("moveCart.do") public String moveCart() {
    * 
    * return "cart/cartList"; }
    */                  
      
}

















