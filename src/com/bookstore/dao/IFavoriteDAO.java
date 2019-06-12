package com.bookstore.dao;

import com.bookstore.bean.Favorite;

import java.util.List;

//�ղؼ�
public interface IFavoriteDAO {
	//�õ���ҳ��
	public int getPageCount(int pageSize);
	//�õ���ǰҳ�ľ�������
	public List<Favorite> getNowPage(int nowPage, int pageSize);
	public boolean save(Favorite favorite);
	public boolean update(Favorite favorite);
	public boolean delete(int id);
	public Favorite findById(int id);
	public List<Favorite> findAll();
}
