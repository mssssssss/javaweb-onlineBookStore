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
	 * 用来执行查询语句
	 */
	public ResultSet query(String sql) {
		try {
			Class.forName(driverName);
			//加载驱动
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
	 * 用来执行insert,update,delete SQL语句
	 * @param sql 要执行的SQL语句
	 * @return sql语句影响的行数
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
	 * 关闭资源
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
			System.out.println("关闭资源时发生异常");
			e.printStackTrace();
		}
	}
}

