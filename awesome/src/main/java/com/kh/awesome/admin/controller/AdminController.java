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
import org.springframework.ui.Model;
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
import com.kh.awesome.admin.model.vo.PageInfo;
import com.kh.awesome.cart.model.vo.Cart;
import com.kh.awesome.common.Pagination;
import com.kh.awesome.member.model.exception.MemberException;
import com.kh.awesome.member.model.vo.Member;
import com.kh.awesome.shop.model.serivce.ShopService;
import com.kh.awesome.shop.model.vo.SellReply;
import com.kh.awesome.admin.model.vo.PageInfo;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService aService;
	
	
	@RequestMapping("adminMain.do")
	public String nWriterView() {
		
		return "admin/adminHome";	
	}
	
	// 메뉴바에 서 상품조회 클릭시 관리자용 상품조회 테이블 조회--준배
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
	// 메뉴바에서 상품조회 클릭시 관리자용 상품조회 테이블 조회--준배
	
	// 메뉴바에서 shop으로 뿌려질 리스트 조회 -- 준배
	@RequestMapping("shopGoodsListView.do")
	public ModelAndView shopGoodsList(ModelAndView mv) {
		
		ArrayList<Admin> list = aService.selectList();
		// System.out.println(list);
	
		if(list != null) {
			mv.addObject("list", list);
			mv.setViewName("shop/shopGoodsListView");
		}else {
			throw new AdminException("상품 목록 보기 실패!!");
				// RuntimeException을 받으면 에러 처리 안해도된다
		}
		
		return mv;
	}
	// 메뉴바에서 shop으로 뿌려질 리 스트 조회 -- 준배
	
	
	// 상품등록 페이지에서 상품버튼 클릭시 -- 준배
	@RequestMapping("sellgoodsInsert.do")
	public String sell_goodsInsert(Admin a, Goods g, HttpServletRequest request,		
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
//System.out.println("file1 : " + file1);
//System.out.println("file2 : " + file2);
//System.out.println("Admin data : " + a);
//System.out.println("Goods data : " + g);
		
		if(!file1.getOriginalFilename().contentEquals("") && !file2.getOriginalFilename().contentEquals("")) {
			String savePath1 = saveFile(file1, request);
			String savePath2 = saveFile(file2, request);
			
			System.out.println("savePath1 : " + savePath1);
			System.out.println("savePath2 : " + savePath2);
			
			
			if(savePath1 != null && savePath2 != null) {	// 파일이 잘 저장된 경우
				a.setFilePath(file1.getOriginalFilename());
				a.setContentFilePath(file2.getOriginalFilename());
			} else {
				System.out.println("파일 에러");
			}
			
		}
		
		int result = aService.insertSell_goods(a);

		if(result > 0 ) {
			int result2 = aService.sellUpdategoods(g);
			
			if(result2 >0) {
				return "redirect:sell_goodsList.do";	
			} else {
				throw new AdminException("result : 상품판매 등록 실패!!");
			}
			
			/* return "redirect:shopGoodsListView.do"; */
		} else {
			throw new AdminException("result2  : 상품판매 등록 실패!!");
		}
	} 
	// 상품등록 페이지에서 상품버튼 클릭시 -- 준배
	
	
	// 상품등록시 savaFile메소드
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
	
	// 상품메인 페이지에서 상품 클릭시 디테일페이지 보여줄 리스트 불러오기 --준배 (동복 list 추가)
	@RequestMapping("adetail.do")
	public ModelAndView shopgoodsDetail(ModelAndView mv, int sellNum, int gId,
					@RequestParam(value="page", required=false) Integer page) {
		
		System.out.println("shop gId ::: " + gId);
		
		int rCurrentPage = 1;
		if(page != null) {
			rCurrentPage = page;
		}
		
		
		int rListCount = aService.getReplylistCount(sellNum);
		
		
		System.out.println("리플리스트 카운트:" + rListCount );
		
		
		PageInfo pi = Pagination.getPageInfo3(rCurrentPage, rListCount );
		
		ArrayList<Admin> list = aService.selectshopgoods(sellNum);
		ArrayList<Admin> replylist = aService.selectreply(sellNum, pi);
		
		ArrayList<Admin> sAvgList = aService.sAvgListSelect(gId);
		
		
		System.out.println("상품디테일 list : "+ list);
		System.out.println("pi :" + pi);
		System.out.println(sAvgList);
		
		
		if(list != null) {
			mv.addObject("list", list)
			.addObject("replylist", replylist)
			.addObject("pi", pi);
			if(rListCount >0) {
			mv.addObject("sAvgList", sAvgList);
			}
			mv.setViewName("shop/shopGoodsDetail");
		
		} else {
			throw new AdminException("SHOP 상품 디테일보기 실패!");
		}
		
		return mv;
	}
	// 상품메인 페이지에서 상품 클릭시 디테일페이지 보여줄 리스트 불러오기 --준배
	
	
	// 상품 디테일 페이지에서 후기작성 버튼 클릭시 후기 작성하기로 -- 준배
	@RequestMapping("afterWrite.do") 
	 public ModelAndView goodsWriterView(ModelAndView mv, int sellNum) {
	 
		ArrayList<Admin> list = aService.selectshopgoods(sellNum);

	 
	 if(list != null) {
		 	mv.addObject("list", list)
		 	.setViewName("shop/sell_afterWriteView");
		 } else { 
			 throw new AdminException("후기 불러오기실패!"); }
	 
	 return mv;
	 
	 }
	// 상품 디테일 페이지에서 후기작성 버튼 클릭시 후기 작성하기로 -- 준배
	
	 
	// 상품조회 페이지에서 상품 품절 처리 -- 준배(동복 : 판매상품 품절 처리시 상품과 판매가 1:1 이라 상품 상태도 N으로 변경)
		@RequestMapping("aStatusUpdate.do")
		public String aStatusUpdate(Admin a, Model model, int sellNum, String status) {
		//public String aStatusUpdate(Admin a, Model model, int sellNum, String status, @RequestParam("statusUpdate") String statusUpdate) {
			//System.out.println("statusUpdate : " + statusUpdate);
			System.out.println("status : " + status);
			System.out.println("sellNum : " + sellNum);
			
			//a.setStatus(statusUpdate);
			a.setStatus(status);
			a.setSellNum(sellNum);
			
			int gId = a.getgId();	//상품 상태 update를 위해서 추가 
			
			int result = aService.updateAdminStatus(a);
			
	System.out.println("result : " + result);

			if(result > 0) {
				
				int result2 = aService.updateGoodsStatus(a);
				
				if(result2 > 0) {
					model.addAttribute("admin" , a);	
				}else {
					throw new MemberException("result : 수정 실패!!");	
				}
				
			} else {
				throw new MemberException("result2 : 수정 실패!!");
			}
			
			return "redirect:sell_goodsList.do";

		}
		// 상품조회 페이지에서 상품 품절 처리 -- 준배
		
	
		// 소개페이지 이동
		
		@RequestMapping("info.do")
		public String infoPageView() {
			
			return "common/infoPage";	
		}
				
			
		
		// 후기 중복체크
		@RequestMapping("selectafterCheck.do")
		public ModelAndView selectafterCheck(HttpServletResponse response,  int mId, int gId,  ModelAndView mv, Admin a ) throws JsonIOException, IOException {
			Map map = new HashMap();
				
			a.setmId(mId);
			a.setgId(gId);
			
			
			boolean isUsable = aService.selectafterCheck(a) == 0? true : false;
			
System.out.println("isUsable : " + isUsable);
			map.put("isUsable", isUsable);
			
			mv.addAllObjects(map);
			
			mv.setViewName("jsonView");
			
			return mv;
		}
	

		
	
		// 동복 부분 --------------------------------------------------------------
		
		
		
		
				// 동복 - 판매 상품 조회 수정 페이지 조회
				@RequestMapping("sell_goodsDetailView.do")
				public ModelAndView sell_goodsDetailView(ModelAndView mv, HttpServletResponse response, int sellNum ) throws IOException {
					response.setContentType("application/json;charset=utf-8");  
//					response.setContentType("application/json;charset=utf-8");

			//System.out.println("시작 : " +mv);
					//mv.addObject("sellList", aService.sell_goodsDetailView(sellNum));	// 동복 - 클릭한 상품 조회
					//mv.setViewName("admin/sell_goodsDetailView"); 
			//System.out.println("끝 : " +mv);
					//return mv;
					/*
					ArrayList<Admin> sellList =  aService.sell_goodsDetailView(sellNum);
			System.out.println("sellList : " + sellList);
					mv.addObject("sellList",sellList);
					mv.setViewName("admin/sell_goodsDetailView"); 
					*/ 
					
					ArrayList<Admin> sellList =  aService.sell_goodsDetailView(sellNum);
		System.out.println("sellList : " + sellList);
					JSONArray jarr = new JSONArray();
					
					for(Admin cate :sellList) {
						// 1_1. JSON배열에 담기 위해 user 객체를 JSON객체에 담기
						JSONObject jUser = new JSONObject();	// JSONObject 는 MAP 과 동일하다.!?
						// .put() : JSONObject MAP 형식이라 put 사용
						jUser.put("sellNum", cate.getSellNum());
						jUser.put("gId", cate.getgId());
						jUser.put("cateCd", cate.getCateCd());
						jUser.put("goodsTitle", cate.getGoodsTitle());
						jUser.put("goodsContent", cate.getGoodsContent());
						jUser.put("filePath", cate.getFilePath());
						jUser.put("contentFilePath", cate.getContentFilePath());
						jUser.put("sellDate", cate.getSellDate());
						jUser.put("modifyDate", cate.getModifyDate());
						jUser.put("status", cate.getStatus());
						
						jUser.put("goodsPrice", cate.getGoodsPrice());
						jUser.put("count", cate.getCount());
						jUser.put("goodsName", cate.getGoodsName());
						// 1_2. user 정보를 담은 JSON객체를 JSON배열에 넣기
						jarr.add(jUser);
						
					}
					
					JSONObject sendJson = new JSONObject();	// 이 작업은 위에 for문 돌려서 나온 jarr 리스트값을
					sendJson.put("list", jarr);
					PrintWriter out = response.getWriter();
					System.out.println("sendJson : " + sendJson);
					//out.print(sendJson);
					//out.flush();
					//out.close();
					
					mv.addObject("glist", aService.goodsList()); // 동복 - 상품 수정 카테고리 조회
					mv.addAllObjects(sendJson);
					
					mv.setViewName("admin/sell_goodsDetailView");
					
					return mv;

				}	
				
				// 동복 - 판매상품 등록 화면으로 이동
				@RequestMapping("goodsWriterView.do")
				public ModelAndView goodsWriterViewList(ModelAndView mv) {
					//동복 - 판매중인 상품을 제외한 상품 리스트 조회
					ArrayList<Goods> glist = aService.sellGoodsList();
			System.out.println("goodsWriterView_glist : " + glist);
					
					if(glist != null) {
						mv.addObject("glist",glist);
						mv.setViewName("admin/sell_goodsInsertView");
						//mv.setViewName("admin/sell_goodsListView");
					}else {
						throw new AdminException("상품 목록 보기 실패!!");
					}
					return mv;
				}	
				
				
			// -3-
				// 동복 - 판매 상품 조회 내역 수정
				@RequestMapping("UpdateSellGoods.do")
				public String UpdateSellGoods(Admin a, Goods g, HttpServletRequest request,				
						@RequestParam(name="titlethumbnailImg", required=false) MultipartFile file1,
						@RequestParam(name="subthumbnailImg", required=false) MultipartFile file2) {
					
					g.setGoodsPrice(a.getGoodsPrice());
					g.setCount(a.getCount());
					g.setgId(a.getgId());
					
			System.out.println("gggggg : " + g);
			System.out.println("aaaaaa : " + a);
				

					if(!file1.getOriginalFilename().contentEquals("") && !file2.getOriginalFilename().contentEquals("")) {
						String savePath1 = saveFile(file1, request);
						String savePath2 = saveFile(file2, request);
						
						System.out.println("savePath1 : " + savePath1);
						System.out.println("savePath2 : " + savePath2);
						
						
						if(savePath1 != null && savePath2 != null) {	// 파일이 잘 저장된 경우
							 a.setFilePath(file1.getOriginalFilename());
							a.setContentFilePath(file2.getOriginalFilename());
						} else {
							System.out.println("파일 에러");
						}
						
					}

					int result = aService.UpdateSellGoods(a);
					
					if(result > 0 ) {
						int result2 = aService.sellUpdategoods(g);
						
						if(result2 > 0) {
							/* return "redirect:goodsWriterView.do"; */
							return "redirect:sell_goodsList.do";
							
							
						}else {
							throw new AdminException("상품 수정 실패!!");	
						}
						
					} else {
						throw new AdminException("상품 수정 실패!!");
					}
				}
				
				
				// 동복 - 상품 리스트 조회
				@RequestMapping("goodsList.do")
				public ModelAndView goodsList(ModelAndView mv, Category c) {
					
					String lclCd = "1";
					String mclCd = "101";
					c.setLclCd(lclCd);
					c.setMclCd(mclCd);
					
					ArrayList<Goods> glist = aService.goodsList();
			System.out.println("전체 상품 리스트 : " + glist);

					if(glist != null) {
						mv.addObject("glist",glist);
						 
						//신규 등록시 필요
						mv.addObject("cateCd", aService.categoryCDselect());
						
						//공통
						mv.addObject("gClist", aService.goodsCategoryList()); // 동복 - 상품 수정 카테고리 조회 (카테고리)
						
						//조회용
						mv.addObject("gLlist", aService.goodsLCategoryList(lclCd)); // 동복 - 상품 수정 카테고리 조회 (대)
						mv.addObject("gMlist", aService.goodsMCategoryList(c)); // 동복 - 상품 수정 카테고리 조회 (중)
						
						// 수정용
						mv.addObject("dLlist", aService.detailLCategoryList()); // 동복 - 상품 수정 카테고리 조회 (대)
						mv.addObject("dMlist", aService.detailCategoryList()); // 동복 - 상품 수정 카테고리 조회 (중)
						
						
						
						mv.setViewName("admin/goodsListView");
					}else {
						throw new AdminException("상품 목록 보기 실패!!");
					}
					return mv;
				}
				
				

				


				
				
				
				
				
				
				
				
				
				
				// 동복 - 상품 등록 페이지	이동
				@RequestMapping("goodsInsertView.do")
				public ModelAndView goodsInsertView(ModelAndView mv, Category c) {
					
					String lclCd = "1";
					String mclCd = "101";
					c.setLclCd(lclCd);
					c.setMclCd(mclCd);
					
					mv.addObject("gClist", aService.goodsCategoryList()); // 동복 - 상품 수정 카테고리 조회 (카테고리)
					mv.addObject("cateCd", aService.categoryCDselect());
					
					mv.addObject("gLlist", aService.goodsLCategoryList(lclCd)); // 동복 - 상품 수정 카테고리 조회 (대)
					mv.addObject("gMlist", aService.goodsMCategoryList(c)); // 동복 - 상품 수정 카테고리 조회 (중)
					
					mv.setViewName("admin/goodsInsertView"); 
//					mv.addObject("gSlist", aService.goodsSCategoryList()); // 동복 - 상품 수정 카테고리 조회
					
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
					
					//mv.addObject("glist", aService.goodsUpCategorylist(gId)); 	// 동복 - 클릭한 상품의 카테고리 조회(개별)
					
					mv.addObject("gClist", aService.goodsUpdateClist(gId)); // 동복 - 클릭한 상품의  카테고리 조회 (전체)
					mv.addObject("gLlist", aService.goodsUpdateLlist(gId)); // 동복 - 클릭한 상품의  (대)카테고리 조회(전체)
					mv.addObject("gMlist", aService.goodsUpdateMlist(gId)); // 동복 - 클릭한 상품의  (중)카테고리 조회(전체)
					
					//mv.setViewName("admin/goodsDetailList");
					mv.setViewName("admin/goodsListView");
					
					return mv;
				}
				
				// 동복 - 상품 수정
				@RequestMapping("goodsUpdate.do")
				public String goodsUpdate(Admin a, Goods g, Category c, HttpServletRequest request) {
					c.setCateNm(g.getGoodsName());
			System.out.println("gggggg : " + g);
			System.out.println("cccccc : " + c);

					int result = aService.Updategoods(g);
					
					// 동복 - 상품관리에서 수정시 판매중인 상품리스트에 대한 상태도 변경
					int gId = a.getgId();	//상품 상태 update를 위해서 추가
					
					String status = g.getGoodsStatus();
					a.setStatus(status);
					a.setgId(gId);
					
					int result3 = aService.updateSellGoodsStatus(a);
					
			System.out.println("상품리스트도 수정 됬나???? : " + result3);

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
				
				// 동복 - 판매상품조회 화면에서 list 클릭시 수정화면으로 이동
				@RequestMapping("sellgoodsListUpdate.do")
				public ModelAndView sellgoodsListUpdate(ModelAndView mv, int sellNum) {
					
					ArrayList<Admin> list = aService.selectshopgoods(sellNum); // sellgoodsListUpdate
					
					if(list != null) {
						mv.addObject("list", list)
						.setViewName("shop/shopGoodsDetail");
					
					} else {
						throw new AdminException("SHOP 상품 디테일보기 실패!");
					}
					
					return mv;
				}
				
				
				// 동복 - 상품 수정시 현재 해당 상품이 판매 중인지 조회	
				@RequestMapping("selectsellGoodsList.do")
				public ModelAndView selectsellGoodsList(HttpServletResponse response,  String gId, ModelAndView mv) throws JsonIOException, IOException {
					Map map = new HashMap();
					
					boolean isUsable = aService.selectsellGoodsList(gId) == 0? true : false;
			//System.out.println("판매중인 상품이 있나? : " + isUsable);
					map.put("isUsable", isUsable);
					
					mv.addAllObjects(map);
					
					mv.setViewName("jsonView");
					
					return mv;
				}	
				
				
				// 동복 - 상품관리 화면에서 조건 검색
				@RequestMapping("checkTextSelectGoods.do")
				public void checkTextSelectGoods(HttpServletResponse response,  String lclCd, String mclCd, String sclCd, String goodsStatus, String soldout, String goodsName, Goods g ) throws JsonIOException, IOException {
					response.setContentType("application/json;charset=utf-8");
		System.out.println("화면에서 넘긴 값 : "+"lclCd : " + lclCd + "mclCd : " + mclCd + "sclCd : " + sclCd + "goodsStatus : " + goodsStatus + "soldout : " + soldout + "goodsName : " + goodsName);
					
					String whereNum = "";
					
					if(!lclCd.isEmpty() || lclCd != ""){
						whereNum = "1";
					}else if(!goodsStatus.isEmpty() || goodsStatus != ""){
						whereNum = "2";
					}else if(!soldout.isEmpty() || soldout != ""){
						whereNum = "3";
					}else if(!goodsName.isEmpty() || goodsName != ""){
						whereNum = "4";
					}
					
					g.setLclCd(lclCd);
					g.setMclCd(mclCd);
					g.setSclCd(sclCd);
					g.setGoodsStatus(goodsStatus);
					g.setSoldout(soldout);

					g.setWhereNum(whereNum);

			System.out.println("g 값 : " + g);
					
					ArrayList<Goods> glist = aService.checkTextSelectGoods(g);
			System.out.println("결과값 : " + glist);		
					//Gson gson = new GsonBuilder().create();
					Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
					
					gson.toJson(glist, response.getWriter());	
					
				}	
				

				
				
//-3-
				// 동복 - 관리자 페이지 
				@RequestMapping("adminSalesVolume.do")
				public ModelAndView salesVolumeList(ModelAndView mv, Category c,@RequestParam(value="page", required=false) Integer page) {
			         // 마이바티스 때 했던 PageInfo의 Pagination을 그대로 쓰자.
			         
			         // 페이지의 정보 없으면 디폴트 1로
			         int currentPage = 1; 
			         
			         if(page != null) {
			            currentPage = page;
			         }
			         
			         // 전체글 갯수 조회 
			         int listCount = aService.salesVolumePageCount();

			         PageInfo pi = Pagination.getPageInfo4(currentPage, listCount);

					
					String lclCd = "1";
					String mclCd = "101";
					c.setLclCd(lclCd);
					c.setMclCd(mclCd);
					
					ArrayList<Goods> glist = aService.salesVolumeList();
					
			System.out.println("전체 상품 리스트 : " + glist);

					if(glist != null) {
						mv.addObject("glist",glist);
						
						//신규 등록시 필요
						mv.addObject("cateCd", aService.categoryCDselect());
						
						//공통
						mv.addObject("gClist", aService.goodsCategoryList()); // 동복 - 상품 수정 카테고리 조회 (카테고리)
						
						//조회용
						mv.addObject("gLlist", aService.goodsLCategoryList(lclCd)); // 동복 - 상품 수정 카테고리 조회 (대)
						mv.addObject("gMlist", aService.goodsMCategoryList(c)); // 동복 - 상품 수정 카테고리 조회 (중)
						
						// 수정용
						mv.addObject("dLlist", aService.detailLCategoryList()); // 동복 - 상품 수정 카테고리 조회 (대)
						mv.addObject("dMlist", aService.detailCategoryList()); // 동복 - 상품 수정 카테고리 조회 (중)
						
						mv.addObject("pi", pi);
						
						mv.setViewName("admin/adminListView");
					}else {
						throw new AdminException("상품 목록 보기 실패!!");
					}
					return mv;
				}				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
			/*	카테고리 관리 만드는중이였음
			 * 	- 결제 페이지를 만들어야겠음!!!!!
			 * 	
			 * */
				
				@RequestMapping("categoryView.do")
				public ModelAndView CategoryView(ModelAndView mv, Category c) {
					
					String lclCd = "1";
					String mclCd = "101";
					c.setLclCd(lclCd);
					c.setMclCd(mclCd);
					
					ArrayList<Goods> glist = aService.goodsList();
			System.out.println("전체 상품 리스트 : " + glist);

					if(glist != null) {
						mv.addObject("glist",glist);
						
						mv.addObject("gClist", aService.goodsCategoryList()); // 동복 - 상품 수정 카테고리 조회 (카테고리)
						mv.addObject("gLlist", aService.goodsLCategoryList(lclCd)); // 동복 - 상품 수정 카테고리 조회 (대)
						mv.addObject("gMlist", aService.goodsMCategoryList(c)); // 동복 - 상품 수정 카테고리 조회 (중)
		System.out.println("mv : " + mv);
						mv.setViewName("admin/categoryView");
						
					}else {
						throw new AdminException("상품 목록 보기 실패!!");
					}
					return mv;
				}
				
				
					
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
				
			}
