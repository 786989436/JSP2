package com.software.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class JDBC1 {

	public static void main(String[] args) {
		String dbDriver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/user?useUnicode=true&characterEncoding=UTF-8";
		String user = "root";
		String password = "root";
		Connection conn = null;
		Statement stm = null;
		ResultSet rs = null;
		try {
			Class.forName(dbDriver);
			conn = DriverManager.getConnection(url, user, password);
			stm = conn.createStatement();
			rs = stm.executeQuery("select * from user");
			while (rs.next()) {
				System.out.println(rs.getString("username"));
				System.out.println(rs.getString("password"));
			}
			rs.close();// 这样写代码不好，如果前面出现异常，则不会执行close
			stm.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
