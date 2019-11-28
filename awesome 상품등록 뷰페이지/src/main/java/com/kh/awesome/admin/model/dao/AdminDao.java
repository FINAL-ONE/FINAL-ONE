package com.kh.awesome.admin.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.awesome.admin.model.vo.Admin;

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
}
