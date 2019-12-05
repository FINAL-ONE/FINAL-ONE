package com.kh.awesome.admin.model.service;

import java.util.ArrayList;

import com.kh.awesome.admin.model.vo.Admin;
import com.kh.awesome.shop.model.vo.SellReply;

public interface AdminService {

	public ArrayList<Admin> selectList();

	public int insertSell_goods(Admin a);

	public ArrayList<Admin> selectshopgoods(int sellNum);

	public int updateAdminStatus(Admin a);


	

}
