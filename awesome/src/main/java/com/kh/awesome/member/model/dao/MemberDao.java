package com.kh.awesome.member.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.kh.awesome.member.model.vo.Member;
import com.kh.awesome.member.model.vo.PageInfo;

@Repository("mDao")
public class MemberDao {

	// 자동으로 인식해서 넣어준다.
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	// 로그인
	public Member selectMember(Member m) {
			  // 다운캐스팅						 
		return (Member)sqlSession.selectOne("memberMapper.selectOne", m);
	}

	//회원가입
	public int insertMember(Member m) {
		//System.out.println("dao");
		return sqlSession.insert("memberMapper.insertMember", m);
	}

	//회원정보 수정
	public int updateMember(Member m) {
		
		return sqlSession.update("memberMapper.updateMember", m);
	}
	
	// 회원탈퇴
	public int deleteMember(String userId) {
		return sqlSession.update("memberMapper.deleteMember", userId);
	}

	public int getListCount() {
		return sqlSession.selectOne("memberMapper.getListCount");
	}

	public ArrayList<Member> selectList(PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();

		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("memberMapper.selectList", null, rowBounds);
	}

	public ArrayList<Member> selectTopList() {
		return (ArrayList)sqlSession.selectList("memberMapper.selectTopList");
	}

	public int updatePointMember(Member m) {
		return sqlSession.update("memberMapper.updatePointMember", m);
	}

	//아이디 중복확인
		public int checkIdDup(String id) {
			
			return sqlSession.selectOne("memberMapper.idCheck",id);
		}

		// 아이디 찾기
			public String find_id(String id) throws Exception{
				return sqlSession.selectOne("memberMapper.find_id", id);
			}

			// 비밀번호 변경
			@Transactional
			public int update_pw(Member member) throws Exception{
				return sqlSession.update("memberMapper.update_pw", member);
			}

			public int checkNickNameDup(String nickName) {
				return sqlSession.selectOne("memberMapper.nickNameCheck",nickName);
			}

	


}