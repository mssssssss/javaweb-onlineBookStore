package com.bookstore.dao;
//ͼ�������Ϣ

import com.bookstore.bean.BookInfo;

import java.util.List;

public interface IBookInfoDAO {
	//��ҳ��
	public int getPageCount(int pageSize);
	//�õ���ǰҳ����������
	public List<BookInfo> getNowPage(int nowPage, int pageSize);
	public boolean save(BookInfo bookInfo);
	public boolean update(BookInfo bookInfo);
	public boolean delete(int id);
	public BookInfo findById(int id);
	public List<BookInfo> findAll();
	//�����ϼ�ʱ����н��������ҳ�������Ʒ
	public List<BookInfo> findBySjdate(int num);
	//����ͼ�����������н��������ҳ�������Ʒ
	public List<BookInfo> findBySaleCount(int num);
	//��ȡ�Ƽ���Ʒ
	public List<BookInfo> findTjbooks(int num);
	public List<BookInfo> findByTypeId(int typeId);
}
