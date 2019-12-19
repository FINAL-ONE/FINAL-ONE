package com.kh.awesome.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.awesome.admin.model.vo.Admin;
import com.kh.awesome.admin.model.vo.Category;
import com.kh.awesome.admin.model.vo.Goods;

@Repository("aDao")
public class AdminDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;

	public ArrayList<Admin> selectList() {
		
		return (ArrayList)sqlSession.selectList("adminMapper.selectList");
	}

	public int insertSell_goods(Admin a) {
		
		return sqlSession.insert("adminMapper.insertSellgoods", a);
	}
	
	public ArrayList<Admin> selectshopgoods(int sellNum) {
		
		return (ArrayList)sqlSession.selectList("adminMapper.selectshopgoods", sellNum);
	}

	public int updateAdminStatus(Admin a) {

		return sqlSession.update("adminMapper.updateAdminStatus", a);
	}

	
	//---------------------------- INSERT ----------------------------	
		// 동복- 상품 등록
		public int insertgoods(Goods g) {
			return sqlSession.insert("adminMapper.insertgoods", g);
		}
		// 동복- 상품 등록시 카테고리(소) 추가 
		public int insertCategory(Category c) {
			return sqlSession.insert("adminMapper.insertCategory", c);
		}
		
	//---------------------------- UPDATE ----------------------------		
		// 동복 - 상품 수정 페이지 이동(조회후)
		public Goods goodsUpdateList(int gId) {
			return sqlSession.selectOne("adminMapper.goodsUpdateList",gId);
		}
		// 동복- 상품 수정
		public int Updategoods(Goods g) {
			return sqlSession.update("adminMapper.Updategoods", g);
		}
		// 동복 - 상품 수정(카테고리 수정)
		public int UpdateCategory(Category c) {
			return sqlSession.update("adminMapper.UpdateCategory", c);
		}	
		// 동복 - 상품판매 등록시 가격 과 수량을 변경했다면 상품테이블도 변경 (1:1 매핑임)
		public int sellUpdategoods(Goods g) {
			return sqlSession.update("adminMapper.sellUpdategoods", g);
		}	
		// 동복 : 판매상품 품절 처리시 상품과 판매가 1:1 이라 상품 상태도 N으로 변경
		public int updateGoodsStatus(Admin a) {
			return sqlSession.update("adminMapper.updateGoodsStatus", a);
		}		
		// 동복 - 판매 상품 조회 내역 수정
		public int UpdateSellGoods(Admin a) {
			return sqlSession.update("adminMapper.UpdateSellGoods",a);
		}	
		// 동복 - 상품관리에서 수정시 판매중인 상품리스트에 대한 상태도 변경
		public int updateSellGoodsStatus(Admin a) {
			return sqlSession.update("adminMapper.updateSellGoodsStatus", a);
		}
		
	//---------------------------- SELECT -------------------------------		
		// 동복- 상품 리스트 조회
		public ArrayList<Goods> goodsList() {
			return (ArrayList)sqlSession.selectList("adminMapper.goodsList");
		}
		// 동복 - 상품판매 시 상품리스트 조회
		public ArrayList<Goods> checkIdDup(String goodsName) {
			return (ArrayList)sqlSession.selectList("adminMapper.selectGoodsValue",goodsName);
		}
		// 동복 - 상품 등록 카테고리 조회
		public ArrayList<Category> goodsCategoryList() {
			return (ArrayList)sqlSession.selectList("adminMapper.selectCategoryList");
		}
		// 동복 - 상품 등록 대 카테고리 조회
		public ArrayList<Category> goodsLCategoryList(String lclCd) {
			return (ArrayList)sqlSession.selectList("adminMapper.selectLCategoryList",lclCd);
		}
		// 동복 - 상품 등록 중 카테고리 조회
		public ArrayList<Category> goodsMCategoryList(Category c) {
			return (ArrayList)sqlSession.selectList("adminMapper.selectMCategoryList",c);
		}
		// 동복 - 상품 등록 소 카테고리 조회
		public ArrayList<Category> goodsSCategoryList(Category c) {
			return (ArrayList)sqlSession.selectList("adminMapper.selectSCategoryList",c);
		}
		// 동복 - 상품 등록시 케테고리 코드 조회
		public Category categoryCDselect() {
			return sqlSession.selectOne("adminMapper.categoryCDselect");
		}	
		// 동복 - 상품 수정 카테고리 조회
		public ArrayList<Category> goodsUpdateClist(int gId) {
			return (ArrayList)sqlSession.selectList("adminMapper.goodsUpdateClist",gId);
		}
		// 동복 - 상품 수정 (대)카테고리 조회
		public ArrayList<Category> goodsUpdateLlist(int gId) {
			return (ArrayList)sqlSession.selectList("adminMapper.goodsUpdateLlist",gId);
		}
		// 동복 - 상품 수정 (중)카테고리 조회
		public ArrayList<Category> goodsUpdateMlist(int gId) {
			return (ArrayList)sqlSession.selectList("adminMapper.goodsUpdateMlist",gId); 
		}
		// 동복 - 클릭한 상품의 카테고리 조회
		public ArrayList<Category> goodsUpCategorylist(int gId) {
			return (ArrayList)sqlSession.selectList("adminMapper.goodsUpCategorylist",gId); 
		}
		// 동복 - 상품 수정화면 카테고리 포커스시 리스트 조회
		public ArrayList<Category> updateCategorylist(String gId) {
			return (ArrayList)sqlSession.selectList("adminMapper.updateCategorylist",gId);
		}
		// 동복 - 상품 등록 시 상품이름 중복 체크
		public int checkGoodsNm(String goodsName) {
			return sqlSession.selectOne("adminMapper.checkGoodsNm",goodsName);
		}
		// 동복 - 상품 수정시 현재 해당 상품이 판매 중인지 조회
		public int selectsellGoodsList(String gId) {
			return sqlSession.selectOne("adminMapper.selectsellGoodsList",gId);
		}
		// 동복 - 판매 상품 조회 수정 페이지
		public ArrayList<Admin> sell_goodsDetailView(int sellNum) {
			return (ArrayList)sqlSession.selectList("adminMapper.sell_goodsDetailView",sellNum);
		}
		// 동복 - 상품관리 화면에서 조건 검색
		public ArrayList<Goods> checkTextSelectGoods(Goods g) {
			return (ArrayList)sqlSession.selectList("adminMapper.checkTextSelectGoods",g);
		}

		
		// 동복 - 상품 수정 (대)카테고리 조회
		public ArrayList<Category> detailLCategoryList() {
			return (ArrayList)sqlSession.selectList("adminMapper.detailLCategoryList");
		}
		// 동복 - 상품 수정 (중)카테고리 조회
		public ArrayList<Category> detailCategoryList() {
			return (ArrayList)sqlSession.selectList("adminMapper.detailCategoryList");
		}

	}
