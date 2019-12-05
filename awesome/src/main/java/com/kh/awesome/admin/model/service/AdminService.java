package com.kh.awesome.admin.model.service;

import java.util.ArrayList;

import com.kh.awesome.admin.model.vo.Admin;
import com.kh.awesome.admin.model.vo.Category;
import com.kh.awesome.admin.model.vo.Goods;
import com.kh.awesome.shop.model.vo.SellReply;

public interface AdminService {

	public ArrayList<Admin> selectList();

	public int insertSell_goods(Admin a);

	public ArrayList<Admin> selectshopgoods(int sellNum);

	public int updateAdminStatus(Admin a);


	
	// 동복- 상품 리스트 조회
	public ArrayList<Goods> goodsList();
	// 동복- 상품 등록
	int insertgoods(Goods g);
	// 동복 - 상품 수정 페이지 이동(조회후)
	public Goods goodsUpdateList(int gId);
	// 동복 - 상품 수정
	int Updategoods(Goods g);
	// 동복 - 상품 수정(카테고리 수정) 
	int UpdateCategory(Category c);
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
	// 동복- 상품 등록
	int insertCategory(Category c);
	// 동복 - 상품 등록 시 상품이름 중복 체크	
	public int checkGoodsNm(String goodsName);
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
	
}
