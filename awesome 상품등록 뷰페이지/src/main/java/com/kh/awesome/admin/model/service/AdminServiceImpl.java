package com.kh.awesome.admin.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.awesome.admin.model.dao.AdminDao;
import com.kh.awesome.admin.model.vo.Admin;

@Service("aService")
public class AdminServiceImpl implements AdminService{

	@Autowired
	AdminDao aDao;

	@Override
	public ArrayList<Admin> selectList() {
		
		return aDao.selectList();
	}

	@Override
	public int insertSell_goods(Admin a) {
		return aDao.insertSell_goods(a);
	}
	
}
