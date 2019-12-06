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

}
