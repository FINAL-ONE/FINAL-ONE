package com.kh.awesome.admin.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.awesome.admin.model.dao.AdminDao;
import com.kh.awesome.admin.model.vo.Admin;
import com.kh.awesome.admin.model.vo.Category;
import com.kh.awesome.admin.model.vo.Goods;
import com.kh.awesome.admin.model.vo.PageInfo;

@Service("aService")
public class AdminServiceImpl implements AdminService{

	@Autowired
	AdminDao aDao;

	// 상품 조회
	@Override
	public ArrayList<Admin> selectList() {
		
		return aDao.selectList();
	}
	
	// 상품등록
	@Override
	public int insertSell_goods(Admin a) {
		return aDao.insertSell_goods(a);
	}

	// SHOP 상품 디테일보기
	@Override
	public ArrayList<Admin> selectshopgoods(int sellNum) {

		return aDao.selectshopgoods(sellNum);
	}
	
	// 상품 내리기 
	@Override
	public int updateAdminStatus(Admin a) {
		return aDao.updateAdminStatus(a);
	}
	
	
	// 리플 조회
	@Override
	public ArrayList<Admin> selectreply(int sellNum, PageInfo pi) {
		return aDao.selectreply(sellNum, pi);
	}
	
	// 해당 글의 리플 갯수 조회
	@Override
	public int getReplylistCount(int sellNum) {
		return aDao.getReplylistCount(sellNum);
	}


	//---------------------------- INSERT ----------------------------
		// 동복- 상품 등록
		@Override
		public int insertgoods(Goods g) {
			return aDao.insertgoods(g);
		}
		// 동복- 상품 등록시 카테고리(소) 추가
		@Override
		public int insertCategory(Category c) {
			return aDao.insertCategory(c);
		}

	//---------------------------- UPDATE ----------------------------	
		// 동복 - 상품 수정 페이지 이동(조회후)
		@Override
		public Goods goodsUpdateList(int gId) {
			return aDao.goodsUpdateList(gId);
		}
		// 동복 : 판매상품 품절 처리시 상품과 판매가 1:1 이라 상품 상태도 N으로 변경
		@Override
		public int updateGoodsStatus(Admin a) {
			return aDao.updateGoodsStatus(a);
		}
		// 동복 - 상품 수정(카테고리 수정)
		@Override
		public int UpdateCategory(Category c) {
			return aDao.UpdateCategory(c);
		}	
		// 동복 - 상품판매 등록시 가격 과 수량을 변경했다면 상품테이블도 변경 (1:1 매핑임)
		@Override
		public int sellUpdategoods(Goods g) {
			return aDao.sellUpdategoods(g);
		}
		// 동복- 상품 수정
		@Override
		public int Updategoods(Goods g) {
			return aDao.Updategoods(g);
		}
		// 동복 - 판매 상품 조회 내역 수정
		@Override
		public int UpdateSellGoods(Admin a) {
			return aDao.UpdateSellGoods(a);
		}
		// 동복 - 상품관리에서 수정시 판매중인 상품리스트에 대한 상태도 변경 
		@Override
		public int updateSellGoodsStatus(Admin a) {
			return aDao.updateSellGoodsStatus(a);
		}
		
	//---------------------------- SELECT ----------------------------	
		// 동복- 상품 리스트 조회
		@Override
		public ArrayList<Goods> goodsList() {
			return aDao.goodsList();
		}
		// 동복 - 상품판매 시 상품리스트 조회
		@Override
		public ArrayList<Goods> checkIdDup(String goodsName) {
			return aDao.checkIdDup(goodsName);
		}
		// 동복 - 상품 등록 카테고리 조회
		@Override
		public ArrayList<Category> goodsCategoryList() {
			return aDao.goodsCategoryList();
		}
		// 동복 - 상품 등록 대 카테고리 조회
		@Override
		public ArrayList<Category> goodsLCategoryList(String lclCd) {
			return aDao.goodsLCategoryList(lclCd);
		}
		// 동복 - 상품 등록 중 카테고리 조회
		@Override
		public ArrayList<Category> goodsMCategoryList(Category c) {
			return aDao.goodsMCategoryList(c);
		}
		// 동복 - 상품 등록 소 카테고리 조회
		@Override
		public ArrayList<Category> goodsSCategoryList(Category c) {
			return aDao.goodsSCategoryList(c);
		}
		// 동복 - 상품 등록시 케테고리 코드 조회
		@Override
		public Category categoryCDselect() {
			return aDao.categoryCDselect();
		}
		// 동복 - 상품 수정 카테고리 조회
		@Override
		public ArrayList<Category> goodsUpdateClist(int gId) {
			return aDao.goodsUpdateClist(gId);
		}
		// 동복 - 상품 수정 (대)카테고리 조회
		@Override
		public ArrayList<Category> goodsUpdateLlist(int gId) {
			return aDao.goodsUpdateLlist(gId);
		}
		// 동복 - 상품 수정 (중)카테고리 조회
		@Override
		public ArrayList<Category> goodsUpdateMlist(int gId) {
			return aDao.goodsUpdateMlist(gId);
		}
		// 동복 - 클릭한 상품의 카테고리 조회
		@Override
		public ArrayList<Category> goodsUpCategorylist(int gId) {
			return aDao.goodsUpCategorylist(gId);
		}
		// 동복 - 상품 수정화면 카테고리 포커스시 리스트 조회
		@Override
		public ArrayList<Category> updateCategorylist(String gId) {
			return aDao.updateCategorylist(gId);
		}
		// 동복 - 상품 등록 시 상품이름 중복 체크	
		@Override
		public int checkGoodsNm(String goodsName) {
			return aDao.checkGoodsNm(goodsName);
		}
		// 동복 - 상품 수정시 현재 해당 상품이 판매 중인지 조회	
		@Override
		public int selectsellGoodsList(String gId) {
			return aDao.selectsellGoodsList(gId);
		}	
		// 동복 - 판매 상품 조회 수정 페이지
		@Override
		public ArrayList<Admin> sell_goodsDetailView(int sellNum) {
			return aDao.sell_goodsDetailView(sellNum);
		}


}
