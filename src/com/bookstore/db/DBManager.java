package com.bookstore.db;

import java.sql.*;

public class DBManager {
	private Connection con;
	private Statement sta;
	private ResultSet rs;
	
	/**
	 * 用来执行查询语句
	 */
	public ResultSet query(String sql) {
		String driverName = "com.mysql.jdbc.Driver";
		String userName = "root";
		//数据库用户名
		String userPwd = "123456";
		//密码
		String dbName = "bookstore";
		//数据库名
		String  url1="jdbc:mysql://localhost:3306/"+dbName;
		String url2 ="?user="+userName+"&password="+userPwd;
		String  url3="&useUnicode=true&characterEncoding=GB2312";
		String url =url1+url2+url3;
		//形成带数据库读写编码的数据库连接字
		try {
			Class.forName(driverName);
			//加载驱动
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
	 * 用来执行insert,update,delete SQL语句
	 * @param sql 要执行的SQL语句
	 * @return sql语句影响的行数
	 */
	public int update(String sql) {
		System.out.println(sql);
		int rows = 0;
		String driverName = "com.mysql.jdbc.Driver";
		String userName = "root";
		//数据库用户名
		String userPwd = "123456";
		//密码
		String dbName = "bookstore";
		//数据库名
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

