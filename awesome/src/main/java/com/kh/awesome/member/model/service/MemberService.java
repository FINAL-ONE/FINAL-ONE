package com.kh.awesome.member.model.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import com.kh.awesome.member.model.vo.Member;
import com.kh.awesome.member.model.vo.PageInfo;

public interface MemberService {

	Member loginMember(Member m);

	int insertMember(Member m);

	int updateMember(Member m);

	int deleteMember(String userId);

	int getListCount();

	ArrayList<Member> selectList(PageInfo pi);
	// 최근 가입 5명 불러오기 ajax
	ArrayList<Member> selectTopList();
	//회원포인트 수정
	int updatePointMember(Member m);
	
	int checkIdDup(String id);
	
	String find_id(HttpServletResponse response, String email) throws Exception;

	void find_pw(HttpServletResponse response, Member member) throws Exception;

	void send_mail(Member member, String div) throws Exception;
	
	String send_mailCheck(String userEmail) throws Exception;
	

	int checkNickNameDup(String nickName);
	
	
}
