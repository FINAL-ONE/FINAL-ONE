package com.kh.awesome.board.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.awesome.board.model.vo.Answer;
import com.kh.awesome.board.model.vo.Attachment;
import com.kh.awesome.board.model.vo.BGood;
import com.kh.awesome.board.model.vo.Board;
import com.kh.awesome.board.model.vo.PageInfo;
import com.kh.awesome.board.model.vo.RGood;
import com.kh.awesome.board.model.vo.Reply;
import com.kh.awesome.board.model.vo.Search;

@Repository("bDao")
public class BoardDao {

	@Autowired
	SqlSessionTemplate sqlSession;

	public int getBoardListCount(int category) {
		
		return sqlSession.selectOne("boardMapper.getBoardListCount", category);
	}

	public ArrayList<Board> selectList(PageInfo pi, int category) {
		
		//pageInfo가 넘어왔을때 rowBounds 설정 방법 
		// 현재 페이지 전까지의 모든 게시글. 
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		
		
		return (ArrayList)sqlSession.selectList("boardMapper.selectList", category, rowBounds);
	}

	public int insertBoard(Board b) {
		return sqlSession.insert("boardMapper.insertBoard", b);
	}

	public int addReadCount(int bId) {
		return sqlSession.update("boardMapper.updateCount", bId);
	}

	public Board selectBoard(int bId) {
		return sqlSession.selectOne("boardMapper.selectBoardOne", bId);
	}

	public int updateBoard(Board b) {
		return sqlSession.update("boardMapper.updateBoard", b);
	}

	public int deleteBoard(int bId) {
		return sqlSession.delete("boardMapper.deleteBoard", bId);
	}


	public int getSearchFboardListCount(Search sc) {
		System.out.println("dao, type: " + sc.getType());
		System.out.println( "dao, searchWord: " + sc.getSearchWord());
		return sqlSession.selectOne("boardMapper.getSearchFboardListCount", sc);
	}

	public ArrayList<Board> selectSeacrchFList(PageInfo pi, Search sc) {
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("boardMapper.selectSeacrchFList", sc, rowBounds);
	}

	public int insertAttachment(Attachment attachment) {
		return sqlSession.insert("boardMapper.insertAttachment", attachment);
	}

	public ArrayList<Attachment> selectAttachments(int bId) {
		return (ArrayList)sqlSession.selectList("boardMapper.selectAttachList", bId);
	}

	public int addBoardGoodCount(BGood bGood) {
		return sqlSession.insert("boardMapper.addBoardGoodCount", bGood);
	}

	public int selectBoardGoodMemory(BGood bGood) {
		return sqlSession.selectOne("boardMapper.selectBoardGoodMemory",bGood);
	}

	public int subBoardGoodCount(BGood bGood) {
		return sqlSession.delete("boardMapper.subBoardGoodCount",bGood);
	}

	public ArrayList<BGood> selectBGood(int bId) {
		return (ArrayList)sqlSession.selectList("boardMapper.selectBGood",bId);
	}

	public int deleteAttachAsFid(int fId) {
		return sqlSession.delete("boardMapper.deleteAttachAsFid",fId);
	}

	public String selectAttachChangeName(int fId) {
		return sqlSession.selectOne("boardMapper.selectAttachChangeName",fId);
	}

	public int updateAttachment(Attachment attachment) {
		return  sqlSession.insert("boardMapper.updateAttachment", attachment);
	}

	public Board selectBoardAsRnum(int rNum) {
		return sqlSession.selectOne("boardMapper.selectBoardAsRnum", rNum);
	}

	public ArrayList<Reply> selectReplyList(int bId, PageInfo pi) {
	
		int offset = (pi.getCurrentPage()-1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSession.selectList("boardMapper.selectReplyList", bId, rowBounds);
	}

	public int insertReply(Reply r) {
		return sqlSession.insert("boardMapper.insertReply", r);
	}

	public int getReplylistCount(int bId) {
		return sqlSession.selectOne("boardMapper.getReplylistCount", bId);
	}

	public int deleteReply(int rId) {
		
		return sqlSession.delete("boardMapper.deleteReply",rId);
	}

	public int selectReplyGoodMemory(RGood g) {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("boardMapper.selectReplyGoodMemory", g);
	}

	public int addReplyGoodCount(RGood g) {
		// TODO Auto-generated method stub
		return sqlSession.insert("boardMapper.addReplyGoodCount", g);
	}

	public int subReplyGoodCount(RGood g) {
		return sqlSession.delete("boardMapper.subReplyGoodCount", g);
	}

	public int insertAnswer(Answer a) {
		return sqlSession.insert("boardMapper.insertAnswer",a);
	}

	public ArrayList<Answer> selectAList(int rId) {
		return (ArrayList)sqlSession.selectList("boardMapper.selectAList", rId);
	}

	public int deleteAnswer(int aId) {
		return sqlSession.delete("boardMapper.deleteAnswer",aId);
	}

	public ArrayList<Reply> selectBestReplyList(int bId) {
		return (ArrayList)sqlSession.selectList("boardMapper.selectBestReplyList", bId);
	}

	public int modifyReply(Reply r) {
		return sqlSession.update("boardMapper.modifyReply", r);
	}

	public ArrayList<Board> selectBestList() {
		return (ArrayList)sqlSession.selectList("boardMapper.selectBestList");
	}

	public ArrayList<Board> selectNoticeList() {
		return (ArrayList)sqlSession.selectList("boardMapper.selectNoticeList");
	}
}
