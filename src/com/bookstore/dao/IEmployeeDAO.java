package com.bookstore.dao;

import com.bookstore.bean.Employee;

import java.util.List;

public interface IEmployeeDAO {
	//�õ���ҳ��
	public int getPageCount(int pageSize);
	//�õ���ǰҳ�ľ�������
	public List<Employee> getNowPage(int nowPage, int pageSize);
	
	public boolean save(Employee employee);
	public boolean update(Employee employee);
	public boolean delete(int id);
	public Employee findById(int id);
	public List<Employee> findAll();
}
