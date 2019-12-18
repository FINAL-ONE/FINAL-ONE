package com.kh.awesome.shop.controller;

import java.io.File;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.awesome.admin.model.exception.AdminException;
import com.kh.awesome.admin.model.vo.Admin;
import com.kh.awesome.shop.model.exception.ShopException;
import com.kh.awesome.shop.model.serivce.ShopService;
import com.kh.awesome.shop.model.vo.Cart;
import com.kh.awesome.shop.model.vo.SellReply;


@SessionAttributes("loginUser")

@Controller
public class ShopController {

	@Autowired
	private ShopService ShopService;
	
	// 댓글 insert
	@RequestMapping("sellafterInsert.do")
	public String sellafterInsert(HttpServletRequest request, SellReply sr,
									@RequestParam(name="afteruploadFiles", required=false) MultipartFile file1,
									@RequestParam(value="star", required=false) Integer star)
									{
		if(!file1.getOriginalFilename().contentEquals("")) {
			String savePath1 = saveFile(file1, request);
			
			System.out.println("savePath1 : " + savePath1);
			
			
			if(savePath1 != null) {	// 파일이 잘 저장된 경우
				/* sr.setSrFilePath(file1.getOriginalFilename()); */
				sr.setFilePath(file1.getOriginalFilename());
			} else {
				System.out.println("에러");
			}
			
		}
		
		int sellStart = 0;
		
		if(star == 1) {
			sellStart = 1;
		} else if (star == 2) {
			sellStart = 2;
		} else if (star == 3) {
			sellStart = 3;
		} else if (star == 4) {
			sellStart = 4;
		} else {
			sellStart = 5;
		}
		System.out.println("sellStart : " + sellStart );
		
		if(sellStart > 0 && sellStart < 6) {
			sr.setSellStart(sellStart);
		}
		
		int result = ShopService.sellafterInsert(sr);
		System.out.println(result);
		
		if(result > 0 ) {
			return "redirect:shopGoodsListView.do";
		} else {
			throw new ShopException("후기 등록 실패!!");
		}	
		
	}

	
	
	public String saveFile(MultipartFile file, HttpServletRequest request) {
		// 파일이 저장될 경로를 설정하는 메소드
		
		// 웹 서버의 contextPath(webapp)을 불러와서 그 아래 resources 경로를 String으로 뽑자.
		String root = request.getSession().getServletContext().getRealPath("resources");
	
		String savePath = root + "\\afteruploadFiles";
		
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
	
	
	
	// 메뉴바에서 관리자가 후기 리뷰 조회 클릭하면 select로 목록 뿌려주기 
	@RequestMapping("sellafterlistViewAdmin.do")
	public ModelAndView sellafterlistViewAdmin(ModelAndView mv) {
		
		ArrayList<SellReply> aflist = ShopService.sellafterSelectList();
		System.out.println("관리자용 후기리스트 : " + aflist);
		
		if(aflist != null) {
			mv.addObject("aflist", aflist);
			
			mv.setViewName("shop/sell_afterList");
		}else {
			throw new ShopException("관리자용 상품 후기 목록 보기 실패!!");
				// RuntimeException을 받으면 에러 처리 안해도된다
		}
		
		return mv;
	}


		
	// 카트에 상품 추가
	@RequestMapping("goCart.do")
	public String goodsgoCartView(HttpServletRequest request, Cart c, Admin a) {
		
		/* ArrayList<Cart> list = ShopService.selectList(); */
		System.out.println("Cart : " + c);
		System.out.println("Admin : " + a);
		
		int result = ShopService.CartInsert(c);
		System.out.println(result);
		
		
		if(result > 0 ) {
			return "redirect:moveCart.do";
		} else {
			throw new ShopException("장바구니 이동 실패!!");
		}	
	}
	
	// 카트 뷰로 이동
	@RequestMapping("moveCart.do")
	public String moveCart() {
		
		return "shop/shopCartView";	
	}							
		
	
	// 상품별 평균 조회
	@RequestMapping("stargIdSelect.do")
	public ModelAndView stargIdSelect(ModelAndView mv, int gId) {
		System.out.println("gId : " + gId);
		
		ArrayList<SellReply> aflist = ShopService.stargIdSelect(gId);
		System.out.println("aflist: " + aflist);
		
		
		ArrayList<SellReply> sAvgList = ShopService.sAvgListSelect(gId);
		
		System.out.println("sAvgList: " + sAvgList);
		
		
		if(aflist != null) {
			mv.addObject("aflist", aflist);
			mv.addObject("sAvgList", sAvgList);
			mv.setViewName("shop/sell_afterList");
		}else {
			throw new ShopException("관리자용 후기 평점 보기 실패!!");
				// RuntimeException을 받으면 에러 처리 안해도된다
		}
		return mv;
	}	
	
	// 내가 쓴 후기 수정 뷰 이동
	@RequestMapping("afterdelete.do")
	public ModelAndView afterDelView(ModelAndView mv, int mid) {
		System.out.println("mId : "+ mid);
		
		ArrayList<SellReply> mflist = ShopService.myafterSelectList(mid);
		System.out.println("내 후기리스트 : " + mflist);
		
		if(mflist != null) {
			mv.addObject("mflist", mflist);
			
			mv.setViewName("shop/myafterView");
		}else {
			throw new ShopException("내 후기 목록 보기 실패!!");
				// RuntimeException을 받으면 에러 처리 안해도된다
		}
		
		return mv;
	}	
}
