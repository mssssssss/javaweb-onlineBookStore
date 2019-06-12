package com.bookstore.dao;

import com.bookstore.bean.SysAdmin;

import java.util.List;

//����Ա
public interface ISysAdminDAO {
	//��ҳ��
	public int getPageCount(int pageSize);
	//�õ���ǰҳ����������
	public List<SysAdmin> getNowPage(int nowPage, int pageSize);
	public boolean save(SysAdmin sysadmin);
	public boolean update(SysAdmin sysAdmin);
	public boolean delete(int id);
	public SysAdmin findById(int id);
	public List<SysAdmin> findAll();
	//��̨��½
	public SysAdmin findByNameAndPwd(String name, String pwd);
}
