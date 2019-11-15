package com.kh.awesome.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.awesome.member.model.vo.Member;

@Repository("mDao")
public class MemberDao {

	// 자동으로 인식해서 넣어준다.
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	public Member selectMember(Member m) {
			  // 다운캐스팅						 
		return (Member)sqlSession.selectOne("memberMapper.selectOne", m);
	}
	
	
}