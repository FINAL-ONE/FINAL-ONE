package com.kh.awesome.board.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.awesome.board.model.exception.BoardException;
import com.kh.awesome.board.model.service.BoardService;
import com.kh.awesome.board.model.vo.Answer;
import com.kh.awesome.board.model.vo.Attachment;
import com.kh.awesome.board.model.vo.BGood;
import com.kh.awesome.board.model.vo.Board;
import com.kh.awesome.board.model.vo.PageInfo;
import com.kh.awesome.board.model.vo.RGood;
import com.kh.awesome.board.model.vo.Reply;
import com.kh.awesome.board.model.vo.Search;
import com.kh.awesome.common.Pagination;
import com.kh.awesome.member.model.vo.Member;

import oracle.net.aso.a;

@Controller
public class BoardController {

	@Autowired
	BoardService bService;
	
	@RequestMapping("fBoardListView.do")
	public ModelAndView boardList(ModelAndView mv,
									@RequestParam(value="page", required=false) Integer page) {
		// 마이바티스 때 했던 PageInfo와 Pagination을 그대로 쓰자.
		
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		int listCount = bService.getFboardListCount();
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		ArrayList<Board> flist = bService.selectFList(pi);
		// ArrayList<Board> flist = bService.selectList(pi);
		
		if(flist != null && flist.size() > 0) {	// 게시글이 있다면
			mv.addObject("flist", flist);
			mv.addObject("pi", pi);
			mv.setViewName("board/fBoardListView");
		}else {
			throw new BoardException("게시글 전체 조회 실패!!");
		}
		return mv;
		
	}
	
	
	@RequestMapping("fBoardDetailView.do")
	public ModelAndView boardDetail(ModelAndView mv, int bId,
									@RequestParam("page") Integer page) {
			int currentPage = 1;
			if(page != null) {
				currentPage = page;
			}
			
			bService.addReadCount(bId);
			Board board = bService.selectBoard(bId);
			int nowRnum = board.getrNum(); 
			System.out.println("nowRnum: " + nowRnum);
		
		  Board prevBoard = bService.selectBoardAsRnum(nowRnum-1); 
		  Board nextBoard = bService.selectBoardAsRnum(nowRnum+1);
		  System.out.println("prevBoard: " + prevBoard );
		  System.out.println("nextBoard: " + nextBoard );
			
			
			ArrayList<Attachment> attachments = bService.selectAttachments(bId);
			ArrayList<BGood> bGoodList =bService.selectBGood(bId);
			System.out.println("bGoodList: "+  bGoodList);
			
			if(board != null) {
				// 메소드 체이닝 방식
				mv.addObject("board", board)
				.addObject("currentPage", currentPage)
				.addObject("prevBoard", prevBoard)
				.addObject("nextBoard", nextBoard)
				.addObject("attachments", attachments)
				.addObject("bGoodList", bGoodList)
				.setViewName("board/fBoardDetailView");	// boardDetailView.jsp 만들러 ㄱㄱ씽
			}else {
				throw new BoardException("게시글 상세조회 실패!");
			}
			
			return mv;
	}
	
	
	
	@RequestMapping("searchFboardList.do")
	public ModelAndView searchFboardList(ModelAndView mv,
					@RequestParam(value="page", required=false) Integer page,
					@RequestParam(value="type", required=false)	String type, 
					@RequestParam(value="searchWord", required=false) String searchWord) {
		
		int currentPage = 1;
		if(page != null) {
		currentPage = page;
		}
		
		if(type == null) {
			type = "all";
		}
		
		if(searchWord ==null) {
			searchWord ="";
		}
		
		Search sc = new Search(type, searchWord); 
				
		int listCount = bService.getSearchFboardListCount(sc);
		
		System.out.println("boarController, getSearchFboardListCount: " + listCount );
		
		
		if(listCount == 0 ) {
			PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
			mv.addObject("pi", pi);
			mv.addObject("sc", sc);
			mv.setViewName("board/fSearchBoardListView");
			return mv;
		}else {
			PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
			ArrayList<Board> flist = bService.selectSeacrchFList(pi, sc);
			// ArrayList<Board> flist = bService.selectList(pi);
			
			/* System.out.println("BoardController, flist" + flist.get(0)); */
			if(flist != null && flist.size() > 0) {	// 게시글이 있다면
				mv.addObject("flist", flist);
				mv.addObject("pi", pi);
				mv.addObject("sc", sc);
				mv.setViewName("board/fSearchBoardListView");
			}else {
				throw new BoardException("게시글 전체 조회 실패!!");
			}
			return mv;
		}

	}
	
	
	
	
	
	
	
	
	
	
	@RequestMapping("fBoardInsertForm.do")
	public String boardInsertView(String category, HttpServletRequest request) {
		System.out.println("BoardController, fboardInsertForm.do:" +  category);
		request.setAttribute(category, "category");
		return "board/fBoardInsertForm";	// boardInsertForm.jsp만들러 ㄱㄱ씽
	}
	

	@RequestMapping("fBoardInsert.do")
	public String boardInsert(HttpServletRequest request, Board b, Attachment attachment, String bLevel,
							@RequestParam(value="file1", required=false)MultipartFile file1,
							@RequestParam(value="file2", required=false)MultipartFile file2,
							@RequestParam(value="file3", required=false)MultipartFile file3,
							@RequestParam(value="file4", required=false)MultipartFile file4,
							@RequestParam(value="file5", required=false)MultipartFile file5) {
		// NoticeController 가서 ninsert.do메소드랑 saveFiel메소드까지 싹 복사해 와서 수정하자.
		
	
			ArrayList<MultipartFile> fileList = new ArrayList<MultipartFile>(); 
		
			fileList.add(file1);
			fileList.add(file2);
			fileList.add(file3);
			fileList.add(file4);
			fileList.add(file5);
			
		
		HttpSession session = request.getSession(); 
		Member loginUser = (Member) session.getAttribute("loginUser"); 
		
		/* b.setmId(1); */
		b.setmId(loginUser.getMid()); 
		b.setbType("1");
		
		int blevel = Integer.parseInt(bLevel);
		b.setbLevel(blevel);
		
	
		
		

		int count = 0; 
		
		int attachCount = 0; 
		for(MultipartFile file : fileList) {
			if(!file.getOriginalFilename().contentEquals("")) {
				attachCount ++; 
			}
		}

		if(attachCount > 0) {
			b.setbType("4");
		}
		
		
		
		int result = bService.insertBoard(b);
		
		
		for(MultipartFile file : fileList) {
				if(!file.getOriginalFilename().contentEquals("")) {
					count++;
					String renameFileName = saveFile(file, request,count);
					if(renameFileName != null) {	// 파일이 잘 저장된 경우
						System.out.println("오리진 파일 : " + file.getOriginalFilename());
						
						
						String root = request.getSession().getServletContext().getRealPath("resources");
						String savePath= root + "\\buploadFiles";
						
						attachment.setOriginName(file.getOriginalFilename());
						attachment.setChangeName(renameFileName);
						attachment.setFilePath(savePath);
						bService.insertAttachment(attachment);
					}
				}
		}
		
		System.out.println("controller, fboarInser.do: " + b);
	

		if(result > 0) {
			return "redirect:fBoardListView.do";
		}else {
			throw new BoardException("게시글 등록 실패!");
		}
	}
	
	
	
	@RequestMapping("boardUpdate.do")
	public String boardUpdate(HttpServletRequest request, Board b, Attachment attachment, String blevel,
								@RequestParam(value="file1", required=false)MultipartFile file1,
								@RequestParam(value="file2", required=false)MultipartFile file2,
								@RequestParam(value="file3", required=false)MultipartFile file3,
								@RequestParam(value="file4", required=false)MultipartFile file4,
								@RequestParam(value="file5", required=false)MultipartFile file5, 
								String delFid1, String delFid2, String delFid3,String delFid4,String delFid5,
								@RequestParam("page") Integer page) {
		
		
		// 1. 파일 삭제 
			
		int [] fidList = new int[5]; 
		fidList[0] = Integer.parseInt(delFid1);
		fidList[1] = Integer.parseInt(delFid2);
		fidList[2] = Integer.parseInt(delFid3);
		fidList[3] = Integer.parseInt(delFid4);
		fidList[4] = Integer.parseInt(delFid5);
		
		
		for(int i=0; i<fidList.length; i++) {
			if(fidList[i] > 0) {
		
				int fId = fidList[i];
				System.out.println(fId);
				String changeName =bService.selectAttachChangeName(fId); 		
				deleteFile(changeName, request);
				
				int result = bService.deleteAttachAsFid(fId);
				if (result >0) {
					System.out.println("파일 삭제 성공");  
				}else {
					System.out.println("파일 삭제 실패");  
				}
			}
		}
		
		
		// 2. 파일 등록 
			ArrayList<MultipartFile> fileList = new ArrayList<MultipartFile>(); 
		
			fileList.add(file1);
			fileList.add(file2);
			fileList.add(file3);
			fileList.add(file4);
			fileList.add(file5);
			
		b.setbType("1");
		
		int attachCount = 0; 
		for(MultipartFile file : fileList) {
			if(!file.getOriginalFilename().contentEquals("")) {
				attachCount ++; 
			}
		}

		if(attachCount > 0) {
			b.setbType("4");
		}
		
		
		int count = 0; 
		for(MultipartFile file : fileList) {
				if(!(file.getOriginalFilename().contentEquals(""))) {
					count++;
					String renameFileName = saveFile(file, request,count);
					if(renameFileName != null) {	// 파일이 잘 저장된 경우
						System.out.println("오리진 파일 : " + file.getOriginalFilename());
						
						
						String root = request.getSession().getServletContext().getRealPath("resources");
						String savePath= root + "\\buploadFiles";
						
						attachment.setOriginName(file.getOriginalFilename());
						attachment.setChangeName(renameFileName);
						attachment.setFilePath(savePath);
						attachment.setbId(b.getbId());
						System.out.println(attachment);
						int result = bService.updateAttachment(attachment);
					}
				}
		}
		
	
		//3. 게시판 수정 	
	
		if(blevel != null) {
			 int bLevel = Integer.parseInt(blevel); 
			 b.setbLevel(bLevel);
		}else {
			int bLevel = 1; 
			 b.setbLevel(bLevel);
		}
	
		  
		 int result = bService.updateBoard(b);
		 
		
		// 결과 값 반환 
		
		if(result > 0) {
			return "redirect:fBoardListView.do?page=" + page;
		}else {
			throw new BoardException("게시글 등록 실패!");
		}
	
	
	}
	
	
	public String saveFile(MultipartFile file, HttpServletRequest request, int count) {
		// 파일이 저장될 경로를 설정하는 메소드
		
		// 웹 서버의 contextPath(webapp)을 불러 와서 그 아래 resources 경로를 String으로 뽑자
		String root = request.getSession().getServletContext().getRealPath("resources");
		
		String savePath = root + "\\buploadFiles";
		
		File folder = new File(savePath);
		
		// nuploadFiles가 없으면 생성해라.
		if(!folder.exists())
		{
			folder.mkdirs();
		}
		
		// 공지사항에서는 파일을 저장할 때 파일명을 올린사람꺼 그대로 썼지만
		// 게시판에서는 파일을 저장할 때 같은 파일명을 올려도 시간을 기준으로 파일명을 변경하자.
//		String filePath = folder + "\\" +file.getOriginalFilename(); // 실제 저장될 파일 경로 + 파일명
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String originFileName = file.getOriginalFilename();
		String StrCount = String.valueOf(count);
		String renameFileName = sdf.format(new java.sql.Date(System.currentTimeMillis())) + StrCount + "."
											+ originFileName.substring(originFileName.lastIndexOf(".")+1);
		
		String filePath = folder + "\\" +renameFileName;
		try {
			file.transferTo(new File(filePath)); // 이 때 파일이 저장된다.
			// 이게 실행되서 파일이 경로에 저장될려면 pom.xml에서 파일 업로드 관련 라이브러리 두개를 추가하고
			// root-context.xml에서 파일 크기 지정을 해줘야지만 파일이 저장된다!!!!!!!!!!!
			
		}catch(Exception e) {
			System.out.println("파일 전송 에러 : " + e.getMessage());
		}
		
		return renameFileName;
	}
	
	
	@RequestMapping ("addBoardGoodCount.do")
	public void addBoardGoodCount(HttpServletResponse response, BGood bGood) throws IOException {
	
		int selectResult = bService.selectBoardGoodMemory(bGood);
		System.out.println("selectResult: " + selectResult );
		
		PrintWriter out = response.getWriter();
		
		if(selectResult < 1 ) {
			int addResult = bService.addBoardGoodCount(bGood);
			System.out.println("addResult: " + addResult );
			out.append("add");
			out.flush();
			
		}else {
			int subResult = bService.subBoardGoodCount(bGood);
			System.out.println("subResult: " + subResult );
			out.append("sub");
			out.flush();
		}
		
		out.close();
		
	}
	
	@RequestMapping("deleteBoard.do")
	public String deleteBoard(int bId, HttpServletRequest request) {
		ArrayList<Attachment> attachments = bService.selectAttachments(bId);
		
		System.out.println(bId);
		System.out.println(attachments);
		
		for( Attachment a: attachments) {
			if(a.getOriginName() != null) {
				deleteFile(a.getChangeName(), request);
			}
		}		
		int result = bService.deleteBoard(bId);
		
		
		if(result >0) {
			return "redirect:fBoardListView.do";
		}else{
			throw new BoardException("게시물 삭제 실패!");
		}
		
	}
	
	public void deleteFile(String fileName, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath= root + "\\buploadFiles";
		File f = new File(savePath + "\\" + fileName);
		if(f.exists()) {
			f.delete();
		}
	}
	
	@RequestMapping("fBoardUpdateView.do")
	public ModelAndView updateBoardView(ModelAndView mv, int bId,
			@RequestParam("page") Integer page) {
		
		Board board = bService.selectBoard(bId);
		ArrayList<Attachment> flist = bService.selectAttachments(bId);
		
		mv.addObject("board", board)
		.addObject("currentPage", page)
		.addObject("flist", flist)
		.setViewName("board/fBoardUpdateView");	// boardDetailView.jsp 만들러 ㄱㄱ씽
		
		return mv;
	}
	
	
	// 댓글 관련 부분
		// 댓글 리스트 불러오기
		
		/*
		@RequestMapping("rList.do")
		public void getReplyList(HttpServletResponse response, int bId, HttpSession session,
								@RequestParam(value="page", required=false) Integer page) throws JsonIOException, IOException {
			System.out.println("리플 들어왔니? ");
			
			int rCurrentPage = 1;
			if(page != null) {
				rCurrentPage = page;
			}
			
			int rListCount = bService.getReplylistCount(bId);
			System.out.println("리플리스트 카운트:" + rListCount );
			
			PageInfo pi = Pagination.getPageInfo(rCurrentPage, rListCount );
			
			session.setAttribute("rListCount", rListCount);

			
			ArrayList<Reply> rList = bService.selectReplyList(bId, pi);
			
			response.setContentType("application/json;charset=utf-8");
			for(Reply r : rList) {
				r.setrContent(r.getrContent());
			}

				System.out.println("rList: " + rList);
			
			Gson gson = new GsonBuilder().setDateFormat("yyyy.MM.dd").create();
			gson.toJson(rList, response.getWriter());
		}
	*/
		
		@RequestMapping("rList.do")
		public ModelAndView  getReplyList(ModelAndView mv, RGood g, HttpSession session, HttpServletResponse response, int bId, 
											@RequestParam(value="page", required=false) Integer page){
			

			int rCurrentPage = 1;
			if(page != null) {
				rCurrentPage = page;
			}
			
			
			int rListCount = bService.getReplylistCount(bId);
			
			
			System.out.println("리플리스트 카운트:" + rListCount );
			
			
			
			PageInfo pi = Pagination.getPageInfo(rCurrentPage, rListCount );
			
			ArrayList<Reply> rList = bService.selectReplyList(bId, pi);
			
			System.out.println(rList);
			
			Member loginUser= (Member) session.getAttribute("loginUser");
			int mId= loginUser.getMid(); 
			g.setmId(mId);
			int result = 0; 
			ArrayList goodClickList = new ArrayList(); 
			for(Reply reply: rList) {
				g.setrId(reply.getrId());
				result = bService.selectReplyGoodMemory(g);
				if (result > 0) {
					goodClickList.add(reply.getrId());
				}else {
					goodClickList.add(30000);
				}
				
			}
		
			for(Reply reply:rList) {
				
				int rId = reply.getrId();
				
				ArrayList<Answer> aList = bService.selectAList(rId); 
				
				response.setContentType("application/json;charset=utf-8");
				for(Answer a  : aList) {
					a.setUserNickname(a.getUserNickname());
					a.setaContent(a.getaContent());
				}
				
				if(aList != null && (!aList.isEmpty())) {
					reply.setaList(aList);
				}
			}
			
			response.setContentType("application/json;charset=utf-8");
			for(Reply r : rList) {
				r.setUserNickname(r.getUserNickname());
				r.setrContent(r.getrContent());
			}
			
			// Sample 클래스 만들고 시작
			// JsonView 라이브러리 받고 빈설정, Sample도 빈 설정 해주자(Servlet-context.xml)
			
			Map map = new HashMap();
			map.put("pi", pi);
			map.put("rList", rList);
			map.put("rListCount", rListCount);
			map.put("goodClickList", goodClickList);
			
			// addAllObjects 메소드를 이용하여 map 객체에 저장된 모든 속성(key, value)를 모델에 저장함
			// addObject로 하게 되면 안된다!
			mv.addAllObjects(map);
			
			// 뷰 지정 : JsonView를 빈으로 등록하고 JsonView id를 뷰 이름으로 지정
			// (viewName과 실제 view단을 연결해주기 위해서)
			mv.setViewName("jsonView");
			
			return mv;
		}
		
		
		
		
		
		
	
		@RequestMapping("addReply.do")
		@ResponseBody
		public String addReply(Reply r, HttpSession session, HttpServletResponse response) {
			response.setContentType("application/json;charset=utf-8");
			
			Member loginUser = (Member)session.getAttribute("loginUser");
			int mId = loginUser.getMid();
			r.setmId(mId);
			
			int result = bService.insertReply(r);
			
			if(result > 0) {
				return "success";
			}else {
				throw new BoardException("댓글 등록 실패!");
			}
		}
	
		@RequestMapping("addAnswer.do")
		@ResponseBody
		public String addAnswer(Answer a, HttpSession session, HttpServletResponse response) {
			response.setContentType("application/json;charset=utf-8");
			
			Member loginUser = (Member)session.getAttribute("loginUser");
			int mId = loginUser.getMid();
			a.setmId(mId);
			
			int result = bService.insertAnswer(a);
			
			if(result > 0) {
				return "success";
			}else {
				throw new BoardException("댓글 등록 실패!");
			}
		}
		
		
		
		
		@RequestMapping("addReplyGood.do")
		@ResponseBody
		public String addReply(RGood g, int rId, HttpSession session, HttpServletResponse response) {
			response.setContentType("application/json;charset=utf-8");
			
			Member loginUser = (Member)session.getAttribute("loginUser");
			int mId = loginUser.getMid();
			g.setmId(mId);
			g.setrId(rId);
			
			int result1 = bService.selectReplyGoodMemory(g);
			
			
			
			System.out.println("리플좋아요 셀렉트 결과: " + result1 );
			
			int result = 0; 
			if(result1 < 1 ) {
				 result = bService.addReplyGoodCount(g);
	
				 if(result > 0) {
						return "AddSuccess";
					}else {
						throw new BoardException("조아요 추가 실패!");
					}
			
			}else {
				result= bService.subReplyGoodCount(g);
			
				 if(result > 0) {
						return "SubSuccess";
					}else {
						throw new BoardException("조아요 삭제 실패!");
					}
			}
		}
		
		
	
		@RequestMapping("deleteReply.do")
		@ResponseBody
		public String deleteReply(int rId) {
			
			int result = bService.deleteReply(rId);
			
			if(result > 0) {
				return "success";
			}else {
				throw new BoardException("댓글 등록 실패!");
			}
		}
	
		@RequestMapping("deleteAnswer.do")
		@ResponseBody
		public String deleteAnswer(int aId) {
			
			int result = bService.deleteAnswer(aId);
			
			if(result > 0) {
				return "success";
			}else {
				throw new BoardException("댓글 등록 실패!");
			}
		}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	///////////////////////////
	
/*	
	@RequestMapping("bupView.do")
	public ModelAndView boardUpdateView(ModelAndView mv, int bId,
										@RequestParam("page") Integer page) {
		mv.addObject("board", bService.selectBoard(bId))
		  .addObject("currentPage", page)
		  .setViewName("board/boardUpdateForm");
		
		return mv;
	}
	
	@RequestMapping("bupdate.do")
	public ModelAndView boardUpdate(ModelAndView mv, Board b,
									HttpServletRequest request,
									@RequestParam("page") Integer page,
									@RequestParam(value="reloadFile", required=false) MultipartFile file) {
	
		//NoticeController의 공지사항 수정부분에 있는 deleteFile 메소드 내용과 유사 
		if(file != null && !file.isEmpty()) {
			if(b.getRenameFileName() != null) {
				deleteFile(b.getRenameFileName(), request);
			}
		}
		
	
		String renameFileName= saveFile(file, request);
		
		if(renameFileName != null) {
			b.setOriginalFileName(file.getOriginalFilename());
			b.setRenameFileName(renameFileName);
		}
		
		int result = bService.updateBoard(b);
		
		if(result >0) {
			
			mv.addObject("page", page)
			  .setViewName("redirect:blist.do");
		}else {
			
			throw new BoardException("게시글 수정 실패!!");
		}
	
		
		return mv;
	}
	
	
	public void deleteFile(String fileName, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath= root + "\\nuploadFiles";
		File f = new File(savePath + "\\" + fileName);
		if(f.exists()) {
			f.delete();
		}
	}
	
	@RequestMapping("bdelete.do")
	public String boardDelete(int bId, HttpServletRequest request) {
		Board b = bService.selectBoard(bId);
		if(b.getOriginalFileName() != null) {
			deleteFile(b.getRenameFileName(), request);
		}
		
		int result = bService.deleteBoard(bId);
		
		if(result >0) {
			return "redirect:blist.do";
		}else{
			throw new BoardException("게시물 삭제 실패!");
		}
		
	}
	
	
	*/
	
	

	
}
