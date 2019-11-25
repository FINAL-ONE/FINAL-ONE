package com.kh.awesome.member.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.awesome.member.model.dao.MemberDao;
import com.kh.awesome.member.model.vo.Member;
import com.kh.awesome.member.model.vo.PageInfo;

@Service("mService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDao mDao;
	
	// 로그인
	@Override
	public Member loginMember(Member m) {
		// 스프링 적용 이후 service 단에서 sqlSession을 생성하지 않는다.
		// dao에서 DI를 통해 sqlSession을 생성한다.
		return mDao.selectMember(m);
	}

	// 회원가입
	@Override
	public int insertMember(Member m) {
		
		return mDao.insertMember(m);
	}

	// 회원정보 수정
	@Override
	public int updateMember(Member m) {

		return mDao.updateMember(m);
	}
	
	// 회원 탈퇴
	@Override
	public int deleteMember(String userId) {
		return mDao.deleteMember(userId);
	}

	@Override
	public int getListCount() {
		return mDao.getListCount();
	}

	@Override
	public ArrayList<Member> selectList(PageInfo pi) {
		return mDao.selectList(pi);
	}

	
}
