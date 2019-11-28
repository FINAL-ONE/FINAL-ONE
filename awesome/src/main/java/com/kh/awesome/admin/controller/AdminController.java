package com.kh.awesome.admin.controller;

import java.io.File;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.awesome.admin.model.exception.AdminException;
import com.kh.awesome.admin.model.service.AdminService;
import com.kh.awesome.admin.model.vo.Admin;


@Controller
public class AdminController {

	
	@Autowired
	private AdminService aService;
	
	
	@RequestMapping("adminMain.do")
	public String nWriterView() {
		
		return "admin/adminListView";	
	}
	
	@RequestMapping("sell_goodsList.do")
	public ModelAndView sell_goodsList(ModelAndView mv) {
		
		ArrayList<Admin> list = aService.selectList();
		System.out.println(list);
		
		if(list != null) {
			mv.addObject("list", list);
			mv.setViewName("admin/sell_goodsListView");
		}else {
			throw new AdminException("상품 목록 보기 실패!!");
				// RuntimeException을 받으면 에러 처리 안해도된다
		}
		
		return mv;
	}
	
	@RequestMapping("goodsWriterView.do")
	public String goodsWriterView() {
		
		return "admin/sell_goodsInsertView";	
	}
	
	// shop으로 뿌려짐
	@RequestMapping("shopGoodsListView.do")
	public ModelAndView shopGoodsList(ModelAndView mv) {
		
		ArrayList<Admin> list = aService.selectList();
		
		if(list != null) {
			mv.addObject("list", list);
			mv.setViewName("shop/shopGoodsListView");
		}else {
			throw new AdminException("상품 목록 보기 실패!!");
				// RuntimeException을 받으면 에러 처리 안해도된다
		}
		
		return mv;
	}
	
	@RequestMapping("sellgoodsInsert.do")
	public String sell_goodsInsert(Admin a, HttpServletRequest request,				
								@RequestParam(name="titlethumbnailImg", required=false) MultipartFile file1,
								@RequestParam(name="subthumbnailImg", required=false) MultipartFile file2) {
		// pom.xml 가서 일단 multipart 인코딩 타입으로 파일을 넘겨줄 때 필요한 라이브러리부터 다운 받자.
		// 그냥 한번 출력 해 보면 다 null로 나오는 걸 확인할 수 있다.(물론, 파일 업로드 관련 라이브러리 추가하고 나서)
		
		// required를 안 써주면 사용자가 파일을 안 올리고 공지글을 썼을 때 uploadFile이 없다는 에러 
		// (Bad Request, Required String parameter 'name' is no present)가 떠버리므로 
		// required-false라는 속성을 써주자

		
		// 다중 파일을 묶어서 업로드(다중 파일 업로드) 하기 때문에 컬렉션을 사용
		// 저장한 파일의 이름을 저장할 ArrayList를 생성하자 
		//ArrayList<String> saveFiles = new ArrayList<String>();
		
		// 원본 파일의 이름을 저장할 ArrayList를 생성하자
		//ArrayList<String> originFiles = new ArrayList<String>();
		// <String> 제네릭 하는이유는 나중에 꺼낼때 다운캐스팅 안하려고
		System.out.println("file1 : " + file1);
		System.out.println("file2 : " + file2);
		
		
		if(!file1.getOriginalFilename().contentEquals("") && !file2.getOriginalFilename().contentEquals("")) {
			String savePath1 = saveFile(file1, request);
			String savePath2 = saveFile(file2, request);
			
			System.out.println("savePath1 : " + savePath1);
			System.out.println("savePath2 : " + savePath2);
			
			
			if(savePath1 != null && savePath2 != null) {	// 파일이 잘 저장된 경우
				a.setFilePath(file1.getOriginalFilename());
				a.setContentFilePath(file2.getOriginalFilename());
			} else {
				System.out.println("에러");
			}
			
		}
		
		int result = aService.insertSell_goods(a);
		
		if(result > 0 ) {
			return "redirect:sell_goodsList.do";
			/* return "redirect:shopGoodsListView.do"; */
		} else {
			throw new AdminException("상품 등록 실패!!");
		}
	}
	
	public String saveFile(MultipartFile file, HttpServletRequest request) {
		// 파일이 저장될 경로를 설정하는 메소드
		
		// 웹 서버의 contextPath(webapp)을 불러와서 그 아래 resources 경로를 String으로 뽑자.
		String root = request.getSession().getServletContext().getRealPath("resources");
	
		String savePath = root + "\\auploadFiles";
		
					// 위의 주소에다가 파일을 생성할꺼다
		File folder = new File(savePath);
		
		// 자동으로 경로에 폴더가 없으면 생성해라.
		if(!folder.exists()) {
			folder.mkdirs();
		}
		// 윗부분까지 파일명과 파일경로 지정하는 부분이다.
		
		// 공시글은 굳이 파일명 중복 제거는 신경쓰지 말고 게시판에서 파일명 rename하는거 하자!!
		// 공지글은 보통 관리자만 쓰니까.
		
		String filePath = folder + "\\" + file.getOriginalFilename();	// 실제 저장될 파일 경로 + 파일명 추가
		
		System.out.println(filePath);
		
		// file은 사용자가 입력한 파일
		try {
			file.transferTo(new File(filePath));	// 이 때 파일이 저장된다.
			// !!!! 이게 실행되서 파일이 경로에 저장되려면 pom.xml에서 파일 업로드 관련 라이브러리 두개를 추가하고
			// root-context.xml에서 파일 크기 지정을 해줘야만 파일이 저장된다.!!!!!!!!!!!!
			
		} catch(Exception e) {
			System.out.println("파일 전송 에러 : " + e.getMessage());
		}
		
				// 스트링으로 반환해줌
		return filePath;
	}
	
	@RequestMapping("adetail.do")
	public ModelAndView shopgoodsDetail(ModelAndView mv, int gId) {
		
		ArrayList<Admin> list = aService.selectshopgoods(gId);
		
		if(list != null) {
			mv.addObject("list", list)
			.setViewName("shop/shopGoodsDetail");
		
		} else {
			throw new AdminException("SHOP 상품 디테일보기 실패!");
		}
		
		return mv;
	}
	
	
	
	
	
	

}
