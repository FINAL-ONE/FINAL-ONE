package com.kh.awesome.diary.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.awesome.diary.model.dao.DiaryDao;

@Service("dService")
public class DiaryServiceImpl implements DiaryService{

	@Autowired
	DiaryDao dDao;
	
	
}
