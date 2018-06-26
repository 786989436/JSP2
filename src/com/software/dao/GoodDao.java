package com.software.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.software.domain.*;
import com.software.utils.*;

public class GoodDao {
	private Connection conn = null;
	private Statement stm = null;
	private ResultSet rs = null;
	private static ArrayList goodslist=new ArrayList();
	
	public ArrayList  select() {
		try {
			conn = JDBC2.getConn();
			stm = conn.createStatement();
			rs = stm.executeQuery("select * from good");
			while(rs.next()){
				Goods good=new Goods(
						rs.getString("GoodName"),
						rs.getFloat("GoodPrice"),
						rs.getInt("GoodNum"),
						rs.getInt("GoodId"));
				//用来操作定位
				goodslist.add(good);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBC2.close(rs, stm, conn);
		}
		return goodslist;
	}

	
	public void add(Goods good) {
		try {
			conn = JDBC2.getConn();
			stm = conn.createStatement();
			stm.executeUpdate("insert into good values('" + good.getName()
					+ "','" + good.getPrice() + "'");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBC2.close(rs, stm, conn);
		}
	}

	public void delete(String goodname) {
		try {
			conn = JDBC2.getConn();
			stm = conn.createStatement();
			stm.executeUpdate("delete from good where GoodName='" + goodname
					+ "'");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBC2.close(rs, stm, conn);
		}
	}

	public void update(String goodname, Goods good) {
		try {
			conn = JDBC2.getConn();
			stm = conn.createStatement();
			stm.executeUpdate("update good set GoodPrice='"
					+ good.getPrice() + "', where username='" + goodname + "'");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBC2.close(rs, stm, conn);
		}
	}

	public Goods findByName(String goodname) {
		Goods good = null;
		try {
			conn = JDBC2.getConn();
			stm = conn.createStatement();
			rs = stm.executeQuery("select * from good where GoodName='"
					+ goodname + "'");
			if (rs.next()) {
				good = new Goods(rs.getString("GoodName"),
						rs.getFloat("GoodPrice"),
						rs.getInt("GoodNum"),
						rs.getInt("GoodId"));
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBC2.close(rs, stm, conn);
		}
		return good;
	}

	/*public UserInfo findByNameAndPwd(String username, String password) {
		UserInfo user = null;
		try {
			conn = JDBC2.getConn();
			stm = conn.createStatement();
			rs = stm.executeQuery("select * from user where username='"
					+ username + "' and password='" + password + "'");
			if (rs.next()) {
				user = new UserInfo(rs.getString("username"),
						rs.getString("password"),
						rs.getString("mail"));
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBC2.close(rs, stm, conn);
		}
		return user;
	}*/

/*	public static void main(String[] args) throws Exception {
		Dao usersDao = new Dao();
		usersDao.add(new UserInfo("3", "3","9@q.com"));
		// usersDao.delete("3");
		usersDao.update("3", new UserInfo("aa", "aa","10@q.com"));
		System.out.println(usersDao.findByName("aa").getPassword());
	}*/
}
