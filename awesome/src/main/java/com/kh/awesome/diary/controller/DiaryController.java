//package com.kh.awesome.diary.controller;
//
//import java.io.File;
//import java.io.IOException;
//
//import javax.servlet.http.HttpServletRequest;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.multipart.MultipartFile;
//
//import com.kh.awesome.diary.model.exception.DiaryException;
//import com.kh.awesome.diary.model.service.DiaryService;
//import com.kh.awesome.diary.model.vo.Diary;
//
//@Controller
//public class DiaryController {
//
//	@Autowired
//	DiaryService dService;
//	
//	@RequestMapping("dinsertView.do")
//	public String diaryInsertView() {
//		return "diary/diaryInsertForm";	// diaryInsertForm.jsp 만들러 가
//	}
//
//	@RequestMapping("dinsert.do")
//	public String diaryInsert(Diary d, HttpServletRequest request, @RequestParam(name="duploadFile", required=false) MultipartFile file) {
//		// pom.xml 가서 일단 multipart 인코딩 타입으로 파일을 넘겨줄 때 필요한 라이브러리부터 다운 받자.
//		// 그냥 한번 출력해 보면 다 null로 나오는 걸 확인할 수 있다.(물론, 파일 업로드 관련 라이브러리 추가 하고 나서)
//		
//		// required를 안 써주면 사용자가 파일을 안 올리고 공지글을 썼을 때 uploadFile이 없다는 에러가 떠버리므로
//		// required=false라는 속성을 써주자.
//		 
//		if(!file.getOriginalFilename().contentEquals("")) {
//			String savePath = saveFile(file, request);
//			
//			if(savePath != null) {
//				d.setbFilePath(file.getOriginalFilename());
//				d.setlFilePath(file.getOriginalFilename());
//				d.setdFilePath(file.getOriginalFilename());
//				d.setsFilePath(file.getOriginalFilename());
//			}
//		}
//		
//		int result = dService.insertDiary(d);
//		
//		if(result > 0) {
//			return null;
//		}else {
//			throw new DiaryException("다이어리 등록 실패!");
//		}
//		
//		return null;
//		
//	}
//		
//
//	// 파일이 저장될 경로를 설정하는 메소드
//	public String saveFile(MultipartFile file, HttpServletRequest request) {
//		
//		// 웹 서버의 contextPath(webapp)을 불러 와서 그 아래 resources 경로를 String으로 뽑자
//		String root = request.getSession().getServletContext().getRealPath("resources");
//		
//		// 저장될 경로
//		String savePath = root + "\\duploadFiles";
//		
//		File folder = new File(savePath);
//		
//		// duploadFiles가 없을 때는 생성
//		if(!folder.exists()) {
//			folder.mkdirs();
//		}
//		
//		String filePath = folder + "\\" + file.getOriginalFilename();	// 실제 저장될 파일 경로 + 파일명
//		
//		try {
//			file.transferTo(new File(filePath));	// 이 때 파일이 저장된다.
//			// 이게 실행되서 파일이 경로에 저장될려면 pom.xml에서 파일 업로드 관련 라이브러리 두개를 추가하고
//			// root-context.xml에서 파일 크기 지정을 해줘야지만 파일이 저장된다!!!!!!!!!!!
//		} catch (Exception e) {
//			System.out.println("파일 전송 에러 : " + e.getMessage());
//		}
//		
//		return filePath;
//	}
//
//	
//	
//	
//	
//	
//	
//}
