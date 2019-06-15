package com.bookstore.db;

import java.sql.*;

public class DBManager {
	private Connection con;
	private Statement sta;
	private ResultSet rs;
	String driverName = ConfigManager.getInstance().getValue("driver");
	String url = ConfigManager.getInstance().getValue("url");
	String userName = ConfigManager.getInstance().getValue("user");
	String userPwd = ConfigManager.getInstance().getValue("pwd");
	/**
	 * ����ִ�в�ѯ���
	 */
	public ResultSet query(String sql) {
		try {
			Class.forName(driverName);
			//��������
			con = DriverManager.getConnection(url, userName, userPwd);
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

		try {
			Class.forName(driverName);
			con = DriverManager.getConnection(url, userName, userPwd);
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

