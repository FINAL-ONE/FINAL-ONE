package com.kh.awesome.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.awesome.member.model.dao.MemberDao;
import com.kh.awesome.member.model.vo.Member;

@Service("mService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDao mDao;

	@Override
	public Member loginMember(Member m) {
		// 스프링 적용 이후 service 단에서 sqlSession을 생성하지 않는다.
		// dao에서 DI를 통해 sqlSession을 생성한다.
		
		return mDao.selectMember(m);
	}
	
}
