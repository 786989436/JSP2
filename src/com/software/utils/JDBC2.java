package com.software.utils;

import java.io.File;
import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import com.software.dao.Dao;;

public class JDBC2 {
	static Properties prop = null;
	/**
	 * 将数据库的连接字符串等信息写入配置文件config.properties
	 * 通过Properties读取
	 * 如果要修改数据库配置可以直接修改配置文件
	 */
	static {
		try {
			prop = new Properties();
			prop.load(new FileInputStream(new File(JDBC2.class
					.getClassLoader().getResource("dbConfig.properties")
					.getPath())));
			Class.forName(prop.getProperty("driver"));
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException();
		}
	}
	/**
	 * 获取数据库连接
	 * @return
	 * @throws ClassNotFoundException
	 * @throws SQLException
	 */
	public static Connection getConn() throws Exception {
		ComboPooledDataSource source = new ComboPooledDataSource();
		Connection conn = source.getConnection();

		conn = DriverManager.getConnection(prop.getProperty("url"),
				prop.getProperty("username"), prop.getProperty("password"));
		return conn;
	}
	/**
	 * 关闭数据库资源
	 * @param rs
	 * @param stm
	 * @param con
	 */
	public static void close(ResultSet rs, Statement stm, Connection conn) {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				rs = null;
			}
		}
		if (stm != null) {
			try {
				stm.close();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				rs = null;
			}
		}
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				rs = null;
			}
		}
	}
/*	public static void main(String[] args) throws Exception{
		Connection conn = null;
		Statement stm = null;
		ResultSet rs = null;
		conn = JDBC2.getConn();
		stm = conn.createStatement();
		rs = stm.executeQuery("select * from user");
		while (rs.next()) {
			System.out.println(rs.getString("username"));
			System.out.println(rs.getString("password"));
		}
		JDBC2.close(rs, stm, conn);
	}*/
}
