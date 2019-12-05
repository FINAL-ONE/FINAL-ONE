package com.kh.awesome.admin.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.awesome.admin.model.exception.AdminException;
import com.kh.awesome.admin.model.service.AdminService;
import com.kh.awesome.admin.model.vo.Admin;
import com.kh.awesome.admin.model.vo.Category;
import com.kh.awesome.admin.model.vo.Goods;


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
			throw new AdminException("�긽�뭹 紐⑸줉 蹂닿린 �떎�뙣!!");
				// RuntimeException�쓣 諛쏆쑝硫� �뿉�윭 泥섎━ �븞�빐�룄�맂�떎
		}
		
		return mv;
	}

	/*
	@RequestMapping("goodsWriterView.do")
	public String goodsWriterView() {
		
		return "admin/sell_goodsInsertView";	
	}
	*/
	// 동복 - 판매상품 등록 수정
	@RequestMapping("goodsWriterView.do")
	public ModelAndView goodsWriterView(ModelAndView mv) {
		ArrayList<Goods> glist = aService.goodsList();
System.out.println("goodsWriterView_glist : " + glist);
		
		if(glist != null) {
			mv.addObject("glist",glist);
			mv.setViewName("admin/sell_goodsInsertView");
		}else {
			throw new AdminException("상품 목록 보기 실패!!");
		}
		return mv;
	}
	
	
	
	// shop�쑝濡� 肉뚮젮吏�
	@RequestMapping("shopGoodsListView.do")
	public ModelAndView shopGoodsList(ModelAndView mv) {
		
		ArrayList<Admin> list = aService.selectList();
		
		if(list != null) {
			mv.addObject("list", list);
			mv.setViewName("shop/shopGoodsListView");
		}else {
			throw new AdminException("�긽�뭹 紐⑸줉 蹂닿린 �떎�뙣!!");
				// RuntimeException�쓣 諛쏆쑝硫� �뿉�윭 泥섎━ �븞�빐�룄�맂�떎
		}
		
		return mv;
	}
	
	@RequestMapping("sellgoodsInsert.do")
	public String sell_goodsInsert(Admin a, HttpServletRequest request,				
								@RequestParam(name="titlethumbnailImg", required=false) MultipartFile file1,
								@RequestParam(name="subthumbnailImg", required=false) MultipartFile file2) {

		System.out.println("file1 : " + file1);
		System.out.println("file2 : " + file2);
		
		
		if(!file1.getOriginalFilename().contentEquals("") && !file2.getOriginalFilename().contentEquals("")) {
			String savePath1 = saveFile(file1, request);
			String savePath2 = saveFile(file2, request);
			
			System.out.println("savePath1 : " + savePath1);
			System.out.println("savePath2 : " + savePath2);
			
			
			if(savePath1 != null && savePath2 != null) {	// �뙆�씪�씠 �옒 ���옣�맂 寃쎌슦
				a.setFilePath(file1.getOriginalFilename());
				a.setContentFilePath(file2.getOriginalFilename());
			} else {
				System.out.println("�뿉�윭");
			}
			
		}
		
		int result = aService.insertSell_goods(a);
		
		
		
		
		if(result > 0 ) {
			return "redirect:sell_goodsList.do";
			/* return "redirect:shopGoodsListView.do"; */
		} else {
			throw new AdminException("�긽�뭹 �벑濡� �떎�뙣!!");
		}
	}
	
	public String saveFile(MultipartFile file, HttpServletRequest request) {
		// 파일이 저장될 경로를 설정하는 메소드
		
		// 웹 서버의 contextPath(webapp)을 불러와서 그 아래 resources 경로를 String으로 뽑자.
		String root = request.getSession().getServletContext().getRealPath("resources");
	
		String savePath = root + "\\auploadFiles";
		
					// // 위의 주소에다가 파일을 생성할꺼다
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
			System.out.println("�뙆�씪 �쟾�넚 �뿉�윭 : " + e.getMessage());
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
			throw new AdminException("SHOP �긽�뭹 �뵒�뀒�씪蹂닿린 �떎�뙣!");
		}
		
		return mv;
	}
	
	
	
	// 동복 - 상품 리스트 조회
	@RequestMapping("goodsList.do")
	public ModelAndView goodsList(ModelAndView mv) {
		ArrayList<Goods> glist = aService.goodsList();
System.out.println("전체 상품 리스트 : " + glist);
		
		if(glist != null) {
			mv.addObject("glist",glist);
			mv.setViewName("admin/goodsListView");
		}else {
			throw new AdminException("상품 목록 보기 실패!!");
		}
		return mv;
	}
	
	// 동복 - 상품 등록 페이지	이동
	@RequestMapping("goodsInsertView.do")
	public ModelAndView goodsInsertView(ModelAndView mv) {
		
		mv.addObject("gClist", aService.goodsCategoryList()); // 동복 - 상품 수정 카테고리 조회
		mv.addObject("cateCd", aService.categoryCDselect());
		mv.setViewName("admin/goodsInsertView"); 
//		mv.addObject("gLlist", aService.goodsLCategoryList()); // 동복 - 상품 수정 카테고리 조회
//		mv.addObject("gMlist", aService.goodsMCategoryList()); // 동복 - 상품 수정 카테고리 조회
//		mv.addObject("gSlist", aService.goodsSCategoryList()); // 동복 - 상품 수정 카테고리 조회
		
		return mv;
	}
	
	// 동복 - 상품 등록
	@RequestMapping("goodsInsert.do")
	public String goodsInsert(Goods g, Category c, String insertlclCd, String insertmclCd, String insertsclCd, String cateCd, String goodsName, HttpServletRequest request) {
System.out.println("신규 등록 : " + g);
System.out.println("insertlclCd : " + insertlclCd + ", insertmclCd : " + insertmclCd + ", insertsclCd : " + insertsclCd + ", cateCd : " + cateCd);

		c.setCateCd(cateCd);
		c.setCateNm(goodsName);
		c.setLclCd(insertlclCd);
		c.setMclCd(insertmclCd);
		c.setSclCd(insertsclCd);

		int result = aService.insertgoods(g); 
System.out.println(result);
		if(result > 0 ) {
			int result2 = aService.insertCategory(c);
System.out.println(result2);
			if(result2 > 0) {
				return "redirect:goodsList.do";
			}else {
				throw new AdminException("상품 등록 실패!!");	 
			}
		} else {
			throw new AdminException("상품 등록 실패!!");
		}
	}
	
	// 동복 - 상품 수정 페이지 이동(조회후)
	@RequestMapping("goodsDetailList.do")
	public ModelAndView goodsDetailList(ModelAndView mv, int gId, String cateCd, String cateNm, String lclCd, String mclCd, String sclCd) {
		
System.out.println("gId 넘어오나? : " + gId + " cateCd : " + cateCd + " cateNm : " + cateNm + " lclCd : " + lclCd + " mclCd : " + mclCd + " sclCd : " + sclCd);		
		
		// 개별로 넘겨볼까..? TEST
		mv.addObject("cateCd",cateCd);
		mv.addObject("cateNm",cateNm);
		mv.addObject("lclCd",lclCd);
		mv.addObject("mclCd",mclCd);
		mv.addObject("sclCd",sclCd);
		// 개별로 넘겨볼까..? TEST
		
		mv.addObject("goods", aService.goodsUpdateList(gId));	// 동복 - 클릭한 상품 조회
		
		mv.addObject("glist", aService.goodsUpCategorylist(gId)); 	// 동복 - 클릭한 상품의 카테고리 조회(개별)
		
		mv.addObject("gClist", aService.goodsUpdateClist(gId)); // 동복 - 클릭한 상품의  카테고리 조회 (전체)
		mv.addObject("gLlist", aService.goodsUpdateLlist(gId)); // 동복 - 클릭한 상품의  (대)카테고리 조회(전체)
		mv.addObject("gMlist", aService.goodsUpdateMlist(gId)); // 동복 - 클릭한 상품의  (중)카테고리 조회(전체)
		
		mv.setViewName("admin/goodsDetailList"); 
		
		return mv;
	}
	
	// 동복 - 상품 수정
	@RequestMapping("goodsUpdate.do")
	public String goodsUpdate(Goods g, Category c, HttpServletRequest request) {
		c.setCateNm(g.getGoodsName());
System.out.println("gggggg : " + g);
System.out.println("cccccc : " + c);
	
		int result = aService.Updategoods(g);
		
		if(result > 0 ) {
			int result2 = aService.UpdateCategory(c);
			
			if(result2 > 0) {
				return "redirect:goodsList.do";
			}else {
				throw new AdminException("상품 수정 실패!!");	
			}
			
		} else {
			throw new AdminException("상품 수정 실패!!");
		}
	}
	// 동복 - 상품판매 시 상품리스트 조회
	@RequestMapping("selectGoodsValue.do")
	public void boardTopList(HttpServletResponse response,  String goodsName) throws JsonIOException, IOException {
		response.setContentType("application/json;charset=utf-8"); 
// System.out.println("넘긴값2  : " + goodsName);	
		ArrayList<Goods> glist = aService.checkIdDup(goodsName);
// System.out.println("넘어온값1 : " + glist);

		Gson gson = new GsonBuilder().create();  
		gson.toJson(glist, response.getWriter());
	}

	
	// 동복 - 상품 수정화면 카테고리 포커스시 리스트 조회
	@RequestMapping("updateCategorylist.do")
	public void updateCategorylist(HttpServletResponse response,  String gId) throws JsonIOException, IOException {
		response.setContentType("application/json;charset=utf-8");
System.out.println("gId : " + gId);
		//ArrayList<Category> gLlist = aService.updateCategorylist(gId);
		ArrayList<Category> gLlist = aService.goodsCategoryList();
		
System.out.println("view로 넘어가기 전: " + gLlist.size());
		JSONArray jarr = new JSONArray();
		
		for(Category cate :gLlist) {
			// 1_1. JSON배열에 담기 위해 user 객체를 JSON객체에 담기
			JSONObject jUser = new JSONObject();	// JSONObject 는 MAP 과 동일하다.!?
			// .put() : JSONObject MAP 형식이라 put 사용
			jUser.put("cateCd", cate.getCateCd());
			jUser.put("cateNm", cate.getCateNm());
			jUser.put("lclCd", cate.getLclCd());
			jUser.put("mclCd", cate.getMclCd());
			jUser.put("sclCd", cate.getSclCd());
			jUser.put("cateLvl", cate.getCateLvl());
			jUser.put("useYn", cate.getUseYn());
			
			// 1_2. user 정보를 담은 JSON객체를 JSON배열에 넣기
			jarr.add(jUser);
			
		}
		
		JSONObject sendJson = new JSONObject();	// 이 작업은 위에 for문 돌려서 나온 jarr 리스트값을
		sendJson.put("list", jarr);
		PrintWriter out = response.getWriter();
System.out.println("sendJson : " + sendJson);
		out.print(sendJson);
		out.flush();
		out.close();
	}
	
	
	// 동복 - 상품 수정화면 (대)카테고리 포커스시 리스트 조회
	@RequestMapping("updateLategorylist.do")
	public void updateLategorylist(HttpServletResponse response,  int gId) throws JsonIOException, IOException {
		response.setContentType("application/json;charset=utf-8");
System.out.println("gId : " + gId);
		//ArrayList<Category> gLlist = aService.updateCategorylist(gId);
		ArrayList<Category> gLlist = aService.goodsUpdateLlist(gId);
		
System.out.println("view로 넘어가기 전: " + gLlist.size());
		JSONArray jarr = new JSONArray();
		
		for(Category cate :gLlist) {
			// 1_1. JSON배열에 담기 위해 user 객체를 JSON객체에 담기
			JSONObject jUser = new JSONObject();	// JSONObject 는 MAP 과 동일하다.!?
			// .put() : JSONObject MAP 형식이라 put 사용
			jUser.put("cateCd", cate.getCateCd());
			jUser.put("cateNm", cate.getCateNm());
			jUser.put("lclCd", cate.getLclCd());
			jUser.put("mclCd", cate.getMclCd());
			jUser.put("sclCd", cate.getSclCd());
			jUser.put("cateLvl", cate.getCateLvl());
			jUser.put("useYn", cate.getUseYn());
			
			// 1_2. user 정보를 담은 JSON객체를 JSON배열에 넣기
			jarr.add(jUser);
			
		}
		
		JSONObject sendJson = new JSONObject();	// 이 작업은 위에 for문 돌려서 나온 jarr 리스트값을
		sendJson.put("list", jarr);
		PrintWriter out = response.getWriter();
System.out.println("sendJson : " + sendJson);
		out.print(sendJson);
		out.flush();
		out.close();
	}
	
	// 동복 - 상품 수정화면 (중)카테고리 포커스시 리스트 조회
	@RequestMapping("updateMategorylist.do")
	public void updateMategorylist(HttpServletResponse response,  int gId) throws JsonIOException, IOException {
		response.setContentType("application/json;charset=utf-8");
System.out.println("gId : " + gId);
		//ArrayList<Category> gLlist = aService.updateCategorylist(gId);
		ArrayList<Category> gLlist = aService.goodsUpdateMlist(gId);
		
System.out.println("view로 넘어가기 전: " + gLlist.size());
		JSONArray jarr = new JSONArray();
		
		for(Category cate :gLlist) {
			// 1_1. JSON배열에 담기 위해 user 객체를 JSON객체에 담기
			JSONObject jUser = new JSONObject();	// JSONObject 는 MAP 과 동일하다.!?
			// .put() : JSONObject MAP 형식이라 put 사용
			jUser.put("cateCd", cate.getCateCd());
			jUser.put("cateNm", cate.getCateNm());
			jUser.put("lclCd", cate.getLclCd());
			jUser.put("mclCd", cate.getMclCd());
			jUser.put("sclCd", cate.getSclCd());
			jUser.put("cateLvl", cate.getCateLvl());
			jUser.put("useYn", cate.getUseYn());
			
			// 1_2. user 정보를 담은 JSON객체를 JSON배열에 넣기
			jarr.add(jUser);
			
		}
		
		JSONObject sendJson = new JSONObject();	// 이 작업은 위에 for문 돌려서 나온 jarr 리스트값을
		sendJson.put("list", jarr);
		PrintWriter out = response.getWriter();
System.out.println("sendJson : " + sendJson);
		out.print(sendJson);
		out.flush();
		out.close();
	}	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	// 동복 - 상품 등록 카테고리 리스트 조회
	@RequestMapping("categoryCSelectBox.do")
	public void CategoryselectBox(HttpServletResponse response,  String lclCd) throws JsonIOException, IOException {
		response.setContentType("application/json;charset=utf-8");
System.out.println("lclCd : " + lclCd);
		ArrayList<Category> gLlist = aService.goodsLCategoryList(lclCd);
System.out.println("view로 넘어가기 전: " + gLlist.size());
		JSONArray jarr = new JSONArray();
		
		for(Category cate :gLlist) {
			// 1_1. JSON배열에 담기 위해 user 객체를 JSON객체에 담기
			JSONObject jUser = new JSONObject();	// JSONObject 는 MAP 과 동일하다.!?
			// .put() : JSONObject MAP 형식이라 put 사용
			jUser.put("cateCd", cate.getCateCd());
			jUser.put("cateNm", cate.getCateNm());
			jUser.put("lclCd", cate.getLclCd());
			jUser.put("mclCd", cate.getMclCd());
			jUser.put("sclCd", cate.getSclCd());
			jUser.put("cateLvl", cate.getCateLvl());
			jUser.put("useYn", cate.getUseYn());
			
			// 1_2. user 정보를 담은 JSON객체를 JSON배열에 넣기
			jarr.add(jUser);
			
		}
		
		JSONObject sendJson = new JSONObject();	// 이 작업은 위에 for문 돌려서 나온 jarr 리스트값을
		sendJson.put("list", jarr);
		PrintWriter out = response.getWriter();
System.out.println("sendJson : " + sendJson);
		out.print(sendJson);
		out.flush();
		out.close();
	}
	
	// 동복 - 상품 등록 (대)카테고리 리스트 조회
	@RequestMapping("categoryLSelectBox.do")
	public void CategoryLselectBox(HttpServletResponse response,  String lclCd, String mclCd, Category c) throws JsonIOException, IOException {
		response.setContentType("application/json;charset=utf-8");
System.out.println("lclCd : " + lclCd + ", mclCd : " + mclCd);

		c.setLclCd(lclCd);
		c.setMclCd(mclCd);
System.out.println("c : " + c);
		ArrayList<Category> gMlist = aService.goodsMCategoryList(c);
		
System.out.println("view로 넘어가기 전: " + gMlist.size());
		JSONArray jarr = new JSONArray();
		
		for(Category cate :gMlist) {
			// 1_1. JSON배열에 담기 위해 user 객체를 JSON객체에 담기
			JSONObject jUser = new JSONObject();	// JSONObject 는 MAP 과 동일하다.!?
			// .put() : JSONObject MAP 형식이라 put 사용
			jUser.put("cateCd", cate.getCateCd());
			jUser.put("cateNm", cate.getCateNm());
			jUser.put("lclCd", cate.getLclCd());
			jUser.put("mclCd", cate.getMclCd());
			jUser.put("sclCd", cate.getSclCd());
			jUser.put("cateLvl", cate.getCateLvl());
			jUser.put("useYn", cate.getUseYn());
			
			// 1_2. user 정보를 담은 JSON객체를 JSON배열에 넣기
			jarr.add(jUser);
			
		}
		
		JSONObject sendJson = new JSONObject();	// 이 작업은 위에 for문 돌려서 나온 jarr 리스트값을
		sendJson.put("list", jarr);
		PrintWriter out = response.getWriter();
System.out.println("sendJson : " + sendJson);
		out.print(sendJson);
		out.flush();
		out.close();
	}
	
	// 동복 - 상품 등록 (중)카테고리 리스트 조회
	@RequestMapping("categoryMSelectBox.do")
	public void CategoryMselectBox(HttpServletResponse response,  String lclCd, String mclCd, String sclCd, Category c) throws JsonIOException, IOException {
		response.setContentType("application/json;charset=utf-8");
		
System.out.println("lclCd : " + lclCd + ", mclCd : " + mclCd + ", sclCd : " + sclCd);

		c.setLclCd(lclCd);
		c.setMclCd(mclCd);
		c.setSclCd(sclCd);

		ArrayList<Category> gMlist = aService.goodsSCategoryList(c);
		
System.out.println("view로 넘어가기 전: " + gMlist.size());
		JSONArray jarr = new JSONArray();
		
		for(Category cate :gMlist) {
			// 1_1. JSON배열에 담기 위해 user 객체를 JSON객체에 담기
			JSONObject jUser = new JSONObject();	// JSONObject 는 MAP 과 동일하다.!?
			// .put() : JSONObject MAP 형식이라 put 사용
			jUser.put("cateCd", cate.getCateCd());
			jUser.put("cateNm", cate.getCateNm());
			jUser.put("lclCd", cate.getLclCd());
			jUser.put("mclCd", cate.getMclCd());
			jUser.put("sclCd", cate.getSclCd());
			jUser.put("cateLvl", cate.getCateLvl());
			jUser.put("useYn", cate.getUseYn());
			
			// 1_2. user 정보를 담은 JSON객체를 JSON배열에 넣기
			jarr.add(jUser);
			
		}
		
		JSONObject sendJson = new JSONObject();	// 이 작업은 위에 for문 돌려서 나온 jarr 리스트값을
		sendJson.put("list", jarr);
		PrintWriter out = response.getWriter();
System.out.println("sendJson : " + sendJson);
		out.print(sendJson);
		out.flush();
		out.close();
	}
	
	
	// 동복 - 상품 등록 시 상품이름 중복 체크	
	@RequestMapping("selectGoodsNm.do")
	public ModelAndView selectGoodsNm(HttpServletResponse response,  String goodsName, ModelAndView mv) throws JsonIOException, IOException {
		Map map = new HashMap();
		
		boolean isUsable = aService.checkGoodsNm(goodsName) == 0? true : false;
		
		map.put("isUsable", isUsable);
		
		mv.addAllObjects(map);
		
		mv.setViewName("jsonView");
		
		return mv;
	}
	
	
	
	
	
	
	
}
