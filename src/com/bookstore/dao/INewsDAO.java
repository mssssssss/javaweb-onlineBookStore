package com.bookstore.dao;

import com.bookstore.bean.News;

import java.util.List;

//新闻
public interface INewsDAO {
	//得到总页数
	public int getPageCount(int pageSize);
	//得到当前页的具体数据
	public List<News> getNowPage(int nowPage, int pageSize);
	public boolean save(News news);
	public boolean update(News news);
	public boolean delete(int id);
	public News findById(int id);
	public List<News> findAll();
	//找出九条新闻
	public List<News> findTopNine(int num);
}
