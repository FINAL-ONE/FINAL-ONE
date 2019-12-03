package com.kh.awesome.board.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.awesome.board.model.dao.BoardDao;
import com.kh.awesome.board.model.vo.Attachment;
import com.kh.awesome.board.model.vo.BGood;
import com.kh.awesome.board.model.vo.Board;
import com.kh.awesome.board.model.vo.PageInfo;
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


	
}
