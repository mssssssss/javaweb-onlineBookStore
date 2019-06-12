package com.bookstore.dao;

import com.bookstore.bean.OrderMain;

import java.util.List;

public interface IOrderMainDAO {
	//�õ���ҳ��
	public int getPageCount(int pageSize);
	//�õ���ǰҳ�ľ�������
	public List<OrderMain> getNowPage(int nowPage, int pageSize);
	public boolean save(OrderMain orderMain);
	public boolean update(OrderMain orderMain);
	public boolean delete(int orderNum);
	public OrderMain findById(int orderNum);
	public List<OrderMain> findAll();
}
