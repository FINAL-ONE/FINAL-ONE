package com.kh.awesome.order.controller;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.awesome.member.model.vo.Member;
import com.kh.awesome.order.model.vo.Order;
import com.kh.awesome.order.service.OrderService;

@Controller
public class OrderController {

	@Autowired
	OrderService oService;

	@RequestMapping("orderview.do")
	public ModelAndView boardList(ModelAndView mv, @RequestParam(value = "page", required = false) Integer page,
			HttpServletRequest request) {

		HttpSession session = request.getSession(true);

		Member loginUser = (Member) session.getAttribute("loginUser");
		int mId = loginUser.getMid();

		ArrayList<Order> list = oService.selectList(mId);

		if (list != null && list.size() > 0) {
			mv.addObject("list", list);
			mv.setViewName("order/orderListView");
		}
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
	public ModelAndView orderDetail(ModelAndView mv, HttpServletRequest request, String orderNum) {
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

	public void gichan(HttpServletResponse response,String orderNum) throws JsonIOException, IOException {
		//System.out.println(orderNum);
		ArrayList<Order> order = oService.orderDetail(orderNum);
		
		for(Order o :order) {
			o.setgName(URLEncoder.encode(o.getgName(), "utf-8"));	
		}

		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(order, response.getWriter());

	}

}
