package com.kh.awesome.board.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.awesome.board.model.dao.BoardDao;
import com.kh.awesome.board.model.vo.Answer;
import com.kh.awesome.board.model.vo.Attachment;
import com.kh.awesome.board.model.vo.BGood;
import com.kh.awesome.board.model.vo.Board;
import com.kh.awesome.board.model.vo.PageInfo;
import com.kh.awesome.board.model.vo.RGood;
import com.kh.awesome.board.model.vo.Reply;
import com.kh.awesome.board.model.vo.Search;



@Service("bService")
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardDao bDao;
	
	@Override
	public int getFboardListCount() {
		return bDao.getFboardListCount();
	}

	@Override
	public ArrayList<Board> selectFList(PageInfo pi) {
		return bDao. selectFList(pi);
	}

	@Override
	public int insertBoard(Board b) {
		return bDao.insertBoard(b);
	}

	@Override
	public int addReadCount(int bId) {
		return bDao.addReadCount(bId);
	}

	@Override
	public Board selectBoard(int bId) {
		return bDao.selectBoard(bId);
	}

	@Override
	public int updateBoard(Board b) {
		return bDao.updateBoard(b);
	}

	@Override
	public int deleteBoard(int bId) {
		return bDao.deleteBoard(bId);
	}

	@Override
	public int getSearchFboardListCount(Search sc) {
	  return bDao.getSearchFboardListCount(sc);
	}

	@Override
	public ArrayList<Board> selectSeacrchFList(PageInfo pi, Search sc) {
		return bDao. selectSeacrchFList(pi, sc);

	}

	@Override
	public int insertAttachment(Attachment attachment) {
		return bDao.insertAttachment(attachment);
		
	}

	@Override
	public ArrayList<Attachment> selectAttachments(int bId) {
		return bDao.selectAttachments(bId);
	}

	@Override
	public int addBoardGoodCount(BGood bGood) {
		return bDao.addBoardGoodCount(bGood);
		
	}

	@Override
	public int selectBoardGoodMemory(BGood bGood) {
		
		return  bDao.selectBoardGoodMemory(bGood);
	}

	@Override
	public int subBoardGoodCount(BGood bGood) {
		return bDao.subBoardGoodCount(bGood);
	}

	@Override
	public ArrayList<BGood> selectBGood(int bId) {
		return bDao.selectBGood(bId);
	}

	@Override
	public int deleteAttachAsFid(int fId) {
		return bDao.deleteAttachAsFid(fId); 
	}

	@Override
	public String selectAttachChangeName(int fId) {
		return bDao.selectAttachChangeName(fId); 
	}

	@Override
	public int updateAttachment(Attachment attachment) {
		return bDao.updateAttachment(attachment); 
		
	}

	@Override
	public Board selectBoardAsRnum(int rNum) {
		return bDao.selectBoardAsRnum(rNum); 
	}

	@Override
	public ArrayList<Reply> selectReplyList(int bId, PageInfo pi) {
		//
		return bDao.selectReplyList(bId, pi);
	}

	@Override
	public int insertReply(Reply r) {
		return bDao.insertReply(r);
	}

	@Override
	public int getReplylistCount(int bId) {
		
		return bDao.getReplylistCount(bId);
	}

	@Override
	public int deleteReply(int rId) {
		// TODO Auto-generated method stub
		return bDao.deleteReply(rId);
	}

	@Override
	public int selectReplyGoodMemory(RGood g) {
		// TODO Auto-generated method stub
		return bDao.selectReplyGoodMemory(g);
	}

	@Override
	public int addReplyGoodCount(RGood g) {
		return bDao.addReplyGoodCount(g); 
	}

	@Override
	public int subReplyGoodCount(RGood g) {
		return bDao.subReplyGoodCount(g); 
	}

	@Override
	public int insertAnswer(Answer a) {
		return bDao.insertAnswer(a);
	}

	@Override
	public ArrayList<Answer> selectAList(int rId) {
		return bDao.selectAList(rId);
	}

	@Override
	public int deleteAnswer(int aId) {
		// TODO Auto-generated method stub
		return bDao.deleteAnswer(aId);
	}


	
}
