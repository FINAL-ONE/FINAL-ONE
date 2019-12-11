package com.kh.awesome.member.model.service;

import java.util.ArrayList;

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

}
