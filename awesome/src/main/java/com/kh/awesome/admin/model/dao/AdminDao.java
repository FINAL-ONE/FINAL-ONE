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
	
	// 동복- 상품 리스트 조회
	public ArrayList<Goods> goodsList() {
		return (ArrayList)sqlSession.selectList("adminMapper.goodsList");
	}
	// 동복- 상품 등록
	public int insertgoods(Goods g) {
		return sqlSession.insert("adminMapper.insertgoods", g);
	}
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
	// 동복- 상품 등록시 카테고리(소) 추가 
	public int insertCategory(Category c) {
		return sqlSession.insert("adminMapper.insertCategory", c);
	}
	// 동복 - 상품 등록 시 상품이름 중복 체크
	public int checkGoodsNm(String goodsName) {
		return sqlSession.selectOne("adminMapper.checkGoodsNm",goodsName);
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
	
}
