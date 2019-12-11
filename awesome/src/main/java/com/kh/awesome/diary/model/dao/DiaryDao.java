package com.kh.awesome.diary.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("dDao")
public class DiaryDao {
	
	@Autowired
	SqlSessionTemplate sqlSession;

}
