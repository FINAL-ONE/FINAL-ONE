package com.kh.awesome.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.awesome.member.model.service.MemberService;
import com.kh.awesome.member.model.vo.Member;
@Controller	
public class MemberController {
	
	@Autowired
	private MemberService mService;

	@RequestMapping(value = "login.me", method = RequestMethod.POST)
	public String memberLogin(Member m, Model model, HttpSession session) {
		
		Member loginUser = mService.loginMember(m);
	
		System.out.println(loginUser);
		
		if(loginUser != null) {
			session.setAttribute("loginUser", loginUser);

			return "home";
			
		} else {
			model.addAttribute("msg","로그인실패!!!");
			
			return "common/errorPage";
		}
		
	}
	
	

}
