package com.kh.awesome.board.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.awesome.board.model.dao.BoardDao;
import com.kh.awesome.board.model.vo.Board;
import com.kh.awesome.board.model.vo.PageInfo;



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


	
}
