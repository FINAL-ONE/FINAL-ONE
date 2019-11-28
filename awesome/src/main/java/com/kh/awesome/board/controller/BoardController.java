package com.kh.awesome.board.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.awesome.board.model.exception.BoardException;
import com.kh.awesome.board.model.service.BoardService;
import com.kh.awesome.board.model.vo.Attachment;
import com.kh.awesome.board.model.vo.BGood;
import com.kh.awesome.board.model.vo.Board;
import com.kh.awesome.board.model.vo.PageInfo;
import com.kh.awesome.board.model.vo.Search;
import com.kh.awesome.common.Pagination;
import com.kh.awesome.member.model.vo.Member;

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
		
		System.out.println("boarController, listCount : " + listCount );

		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		ArrayList<Board> flist = bService.selectFList(pi);
		// ArrayList<Board> flist = bService.selectList(pi);
		
		
		 System.out.println("BoardController, flist" + flist.get(0)); 
		
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
		ArrayList<Board> attachments = bService.selectAttachments(bId);
		
		
		if(board != null) {
			// 메소드 체이닝 방식
			mv.addObject("board", board)
			.addObject("currentPage", currentPage)
			.addObject("attachments", attachments)
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
	public String boardInsert(HttpServletRequest request, Board b, Attachment attachment, 
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
		
		/* b.setmId(loginUser.getMid()); */
		b.setmId(1);
		b.setbType("1");

		int count = 0; 
		
		int result = bService.insertBoard(b);
		
		
		for(MultipartFile file : fileList) {
				if(!file.getOriginalFilename().contentEquals("")) {
					b.setbType("4");
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
	public void addBoardGoodCount(BGood bGood) {
	
		int selectResult = bService.selectBoardGoodMemory(bGood);
		System.out.println("selectResult: " + selectResult );
		
		if(selectResult <= 0 ) {
			int addResult = bService.addBoardGoodCount(bGood);
			System.out.println("addResult: " + addResult );
			
		}else {
			/* int subResult = bService.subBoardGoodCount(bGood); */
			
		}
		
	}
	
	
	
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
