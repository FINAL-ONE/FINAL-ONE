package com.kh.awesome.board.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.awesome.board.model.vo.Board;
import com.kh.awesome.board.model.vo.PageInfo;

@Repository("bDao")
public class BoardDao {

	@Autowired
	SqlSessionTemplate sqlSession;

	public int getFboardListCount() {
		
		return sqlSession.selectOne("boardMapper.getFboardListCount");
	}

	public ArrayList<Board> selectFList(PageInfo pi) {
		
		//pageInfo가 넘어왔을때 rowBounds 설정 방법 
		// 현재 페이지 전까지의 모든 게시글. 
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		
		return (ArrayList)sqlSession.selectList("boardMapper.selectFList", null, rowBounds);
	}

	public int insertBoard(Board b) {
		return sqlSession.insert("boardMapper.insertBoard", b);
	}

	public int addReadCount(int bId) {
		return sqlSession.update("boardMapper.updateCount", bId);
	}

	public Board selectBoard(int bId) {
		return sqlSession.selectOne("boardMapper.selectOne", bId);
	}

	public int updateBoard(Board b) {
		return sqlSession.update("boardMapper.updateBoard", b);
	}

	public int deleteBoard(int bId) {
		return sqlSession.delete("boardMapper.deleteBoard", bId);
	}
}
