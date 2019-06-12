package com.bookstore.db;

import java.sql.*;

public class DBManager {
	private Connection con;
	private Statement sta;
	private ResultSet rs;
	
	/**
	 * ����ִ�в�ѯ���
	 */
	public ResultSet query(String sql) {
		String driverName = "com.mysql.jdbc.Driver";
		String userName = "root";
		//���ݿ��û���
		String userPwd = "123456";
		//����
		String dbName = "bookstore";
		//���ݿ���
		String  url1="jdbc:mysql://localhost:3306/"+dbName;
		String url2 ="?user="+userName+"&password="+userPwd;
		String  url3="&useUnicode=true&characterEncoding=GB2312";
		String url =url1+url2+url3;
		//�γɴ����ݿ��д��������ݿ�������
		try {
			Class.forName(driverName);
			//��������
			con = DriverManager.getConnection(url);
			sta = con.createStatement();
			rs = sta.executeQuery(sql);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return rs;
	}
	


	/**
	 * ����ִ��insert,update,delete SQL���
	 * @param sql Ҫִ�е�SQL���
	 * @return sql���Ӱ�������
	 */
	public int update(String sql) {
		System.out.println(sql);
		int rows = 0;
		String driverName = "com.mysql.jdbc.Driver";
		String userName = "root";
		//���ݿ��û���
		String userPwd = "123456";
		//����
		String dbName = "bookstore";
		//���ݿ���
		String  url1="jdbc:mysql://localhost:3306/"+dbName;
		String url2 ="?user="+userName+"&password="+userPwd;
		String  url3="&useUnicode=true&characterEncoding=GB2312";
		String url =url1+url2+url3;
		//String url = "jdbc:sqlserver://127.0.0.1:1433;DatabaseName=BookStore";
		//String url = "jdbc:mysql://localhost:3306/bookstore";
		try {
			//Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			Class.forName(driverName);
			con = DriverManager.getConnection(url);
			sta = con.createStatement();
			rows = sta.executeUpdate(sql);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			this.close();
		}
		return rows;
	}
	/**
	 * �ر���Դ
	 */
	public void close() {
		try {
			if (rs != null) {
				rs.close();
				rs = null;
			}
			if (sta != null) {
				sta.close();
				sta = null;
			}	
			if (con != null) {
				con.close();
				con = null;
			}	
		} catch (Exception e) {
			System.out.println("�ر���Դʱ�����쳣");
			e.printStackTrace();
		}
	}
}

