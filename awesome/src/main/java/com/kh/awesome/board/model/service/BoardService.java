package com.kh.awesome.board.model.service;

import java.util.ArrayList;

import com.kh.awesome.board.model.vo.Answer;
import com.kh.awesome.board.model.vo.Attachment;
import com.kh.awesome.board.model.vo.BGood;
import com.kh.awesome.board.model.vo.Board;
import com.kh.awesome.board.model.vo.PageInfo;
import com.kh.awesome.board.model.vo.RGood;
import com.kh.awesome.board.model.vo.Reply;
import com.kh.awesome.board.model.vo.Search;

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

	
	// 자유게시판 게시글 검색 
	public int getSearchFboardListCount(Search sc);

	// 자유게게시판 검색 결과 
	public ArrayList<Board> selectSeacrchFList(PageInfo pi, Search sc);

	// 게시판 글 작성시 파일 첨부 
	public int insertAttachment(Attachment attachment);


	// 게시글 상세보기시 첨부파일 조회 
	public ArrayList<Attachment> selectAttachments(int bId);

	public int addBoardGoodCount(BGood bGood);

	public int selectBoardGoodMemory(BGood bGood);

	public int subBoardGoodCount(BGood bGood);

	public ArrayList<BGood> selectBGood(int bId);

	public int deleteAttachAsFid(int fId);

	public String selectAttachChangeName(int fId);

	public int updateAttachment(Attachment attachment);

	public Board selectBoardAsRnum(int rNum);

	public ArrayList<Reply> selectReplyList(int bId, PageInfo pi);

	public int insertReply(Reply r);

	public int getReplylistCount(int bId);

	public int deleteReply(int rId);

	public int selectReplyGoodMemory(RGood g);

	public int addReplyGoodCount(RGood g);

	public int subReplyGoodCount(RGood g);

	public int insertAnswer(Answer a);

	public ArrayList<Answer> selectAList(int rId);

	public int deleteAnswer(int aId);

	public ArrayList<Reply> selectBestReplyList(int bId);

	public int modifyReply(Reply r);
	
}
