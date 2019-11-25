package com.kh.awesome.board.model.service;

import java.util.ArrayList;

import com.kh.awesome.board.model.vo.Board;
import com.kh.awesome.board.model.vo.PageInfo;

public interface BoardService {
	/*
	 * 1_1. 자유 게시판 전체 수 조회
	 */
	public int getFboardListCount();
	
	/*
	 * 1_2. 게시판 전체 조회
	 */
	public ArrayList<Board> selectFList(PageInfo pi);
	
	/*
	 * 2. 게시판 등록
	 */
	public int insertBoard(Board b);
	
	/*
	 * 3_1. 게시판 상세 조회시 조회수 증가
	 */
	public int addReadCount(int bId);
	
	/*
	 * 3_2. 게시판 상세 조회
	 */
	public Board selectBoard(int bId);
	
	/*
	 * 4. 게시판 수정
	 */
	public int updateBoard(Board b);
	
	/*
	 * 5. 게시판 삭제
	 */
	public int deleteBoard(int bId);
	
}
