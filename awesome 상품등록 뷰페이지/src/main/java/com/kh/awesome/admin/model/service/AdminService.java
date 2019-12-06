package com.kh.awesome.admin.model.service;

import java.util.ArrayList;

import com.kh.awesome.admin.model.vo.Admin;

public interface AdminService {

	ArrayList<Admin> selectList();

	int insertSell_goods(Admin a);

}
