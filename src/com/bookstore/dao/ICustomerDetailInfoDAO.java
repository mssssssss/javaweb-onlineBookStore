package com.bookstore.dao;

import com.bookstore.bean.CustomerDetailInfo;

import java.util.List;

//用户详细信息
public interface ICustomerDetailInfoDAO {
	//总页数
	public int getPageCount(int pageSize);
	//显示当前页的总数据
	public List<CustomerDetailInfo> getNowPage(int nowPage, int pageSize);
	public boolean save(CustomerDetailInfo customerDetailInfo);
	public boolean update(CustomerDetailInfo customerDetailInfo);
	public boolean delete(int id);
	public CustomerDetailInfo findById(int id);
	public List<CustomerDetailInfo> findAll();
}
