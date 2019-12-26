package com.kh.awesome.admin.model.service;

import java.util.ArrayList;

import com.kh.awesome.admin.model.vo.Admin;
import com.kh.awesome.admin.model.vo.Category;
import com.kh.awesome.admin.model.vo.Goods;
import com.kh.awesome.admin.model.vo.PageInfo;

public interface AdminService {
	
	public ArrayList<Admin> selectList();

	public int insertSell_goods(Admin a);
	
	// 상품조회
	public ArrayList<Admin> selectshopgoods(int sellNum);

	public int updateAdminStatus(Admin a);
	
	// 리플 조회
	public ArrayList<Admin> selectreply(int sellNum, PageInfo pi);	
	
	// 해당 글의 리플 갯수 조회
	public int getReplylistCount(int sellNum);
	
	// 해당 상품 후기 평균
	public ArrayList<Admin> sAvgListSelect(int gId);
	
	// 구매한 상품에서 후기작성 중복 체크
	public int selectafterCheck(Admin a);
	
	
	//---------------------------- INSERT ----------------------------	
	// 동복- 상품 등록
	int insertCategory(Category c);
	// 동복- 상품 등록
	int insertgoods(Goods g);
	
//---------------------------- UPDATE ----------------------------	
	// 동복 - 상품 수정 페이지 이동(조회후)
	public Goods goodsUpdateList(int gId);
	// 동복 - 상품 수정
	int Updategoods(Goods g);
	// 동복 - 상품 수정(카테고리 수정) 
	int UpdateCategory(Category c);
	// 동복 - 상품판매 등록시 가격 과 수량을 변경했다면 상품테이블도 변경 (1:1 매핑임)
	int sellUpdategoods(Goods g);
	// 동복 : 판매상품 품절 처리시 상품과 판매가 1:1 이라 상품 상태도 N으로 변경
	int updateGoodsStatus(Admin a);
	// 동복 - 판매 상품 조회 내역 수정
	int UpdateSellGoods(Admin a);	
	// 동복 - 상품관리에서 수정시 판매중인 상품리스트에 대한 상태도 변경
	int updateSellGoodsStatus(Admin a);
//---------------------------- SELECT ----------------------------	
	// 동복- 판매량 많은 상품 조회 페이징처리 
	int salesVolumePageCount();
	// 동복- 상품 리스트 조회
	public ArrayList<Goods> goodsList();
	// 동복- 판매량 많은 상품 조회
	public ArrayList<Goods> salesVolumeList(PageInfo pi);
	// 동복 - 판매중인 상품을 제외한 상품 리스트 조회
	public ArrayList<Goods> sellGoodsList();
	// 동복 - 상품판매 시 상품리스트 조회
	public ArrayList<Goods> checkIdDup(String goodsName);
	// 동복 - 상품 등록 카테고리 조회
	public ArrayList<Category> goodsCategoryList();
	// 동복 - 상품 등록 대 카테고리 조회
	public ArrayList<Category> goodsLCategoryList(String lclCd);
	// 동복 - 상품 등록 중 카테고리 조회
	public ArrayList<Category> goodsMCategoryList(Category c);
	// 동복 - 상품 등록 소 카테고리 조회
	public ArrayList<Category> goodsSCategoryList(Category c);
	// 동복 - 상품 등록시 케테고리 코드 조회
	public Category categoryCDselect();
	// 동복 - 상품 수정화면 카테고리 포커스시 리스트 조회
	public ArrayList<Category> updateCategorylist(String gId);
	// 동복 - 상품 수정 카테고리 조회
	public ArrayList<Category> goodsUpdateClist(int gId);
	// 동복 - 상품 수정 (대)카테고리 조회
	public ArrayList<Category> goodsUpdateLlist(int gId);
	// 동복 - 상품 수정 (중)카테고리 조회
	public ArrayList<Category> goodsUpdateMlist(int gId);
	// 동복 - 클릭한 상품의 카테고리 조회
	public ArrayList<Category> goodsUpCategorylist(int gId);	
	// 동복 - 상품 등록 시 상품이름 중복 체크	
	public int checkGoodsNm(String goodsName);
	// 동복 - 상품 수정시 현재 해당 상품이 판매 중인지 조회
	public int selectsellGoodsList(String gId);
	// 동복 - 판매 상품회 수정 페이지
	public ArrayList<Admin> sell_goodsDetailView(int sellNum);	
	// 동복 - 상품관리 화면에서 조건 검색
	public ArrayList<Goods> checkTextSelectGoods(Goods g);
	// 동복 - 상품관리 화면에서 조건 검색(카운트)
	int checkTextSelectGoodsCount(Goods g);	
	// 동복 - 상품 수정 (대)카테고리 조회
	public ArrayList<Category> detailLCategoryList();
	// 동복 - 상품 수정 (중)카테고리 조회
	public ArrayList<Category> detailCategoryList();



	
	
}
