package com.software.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.software.domain.*;
import com.software.utils.*;

public class orderDao {
	private Connection conn = null;
	private Statement stm = null;
	private ResultSet rs = null;

	
	public boolean  selectCarGood(int ordernum) {
		try {
			conn = JDBC2.getConn();
			stm = conn.createStatement();
			rs = stm.executeQuery("select * from order where OrderNum='"+ordernum+"'");
			if (rs.wasNull()) {
				return true;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBC2.close(rs, stm, conn);
		}
		return false;
	}

	
/*	public void add(order single) {
		try {
			conn = JDBC2.getConn();
			stm = conn.createStatement();
			stm.executeUpdate("insert into Order values('" "')");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBC2.close(rs, stm, conn);
		}
	}*/

	public void addItem(order single) {
		try {
			conn = JDBC2.getConn();
			stm = conn.createStatement();
			stm.executeUpdate("insert into dingdan values('" + single.getOrdernum()+ "','" + single.getGoodname() + "','"+single.getUsername()+"','"+single.getGoodprice()+"','"+single.getGoodnum()+"','"+single.getGoodtotal()+"')");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBC2.close(rs, stm, conn);
		}
	}
	public void delete(String orderId) {
		try {
			conn = JDBC2.getConn();
			stm = conn.createStatement();
			stm.executeUpdate("delete from dingdan where OrderNum='" + orderId
					+ "'");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBC2.close(rs, stm, conn);
		}
	}

	public void update(String username, UserInfo user) {
		try {
			conn = JDBC2.getConn();
			stm = conn.createStatement();
			stm.executeUpdate("update user set username='"
					+ user.getUsername() + "', password='" + user.getPassword()
					+ "' where username='" + username + "'");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBC2.close(rs, stm, conn);
		}
	}

/*	public UserInfo findByName(String username) {
		UserInfo user = null;
		try {
			conn = JDBC2.getConn();
			stm = conn.createStatement();
			rs = stm.executeQuery("select * from user where username='"
					+ username + "'");
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
	public ArrayList findByName(String username) {
		ArrayList orderlist=new ArrayList();
		order buyer=new order();
		System.out.println(username);
		try {
			conn = JDBC2.getConn();
			stm = conn.createStatement();
			rs = stm.executeQuery("select * from dingdan where Buyer='"
					+ username + "'");
			while(rs.next()) {
				buyer = new order(rs.getString("OrderNum"),
						rs.getString("GoodName"),
						rs.getString("Buyer"),
						rs.getFloat("GoodPrice"),
						rs.getInt("GoodNum"),
						rs.getFloat("GoodTotal"));
			orderlist.add(buyer);			
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBC2.close(rs, stm, conn);
		}
		return orderlist;
	}
	public UserInfo findByNameAndPwd(String username, String password) {
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
	}

/*	public static void main(String[] args) throws Exception {
		Dao usersDao = new Dao();
		usersDao.add(new UserInfo("3", "3","9@q.com"));
		// usersDao.delete("3");
		usersDao.update("3", new UserInfo("aa", "aa","10@q.com"));
		System.out.println(usersDao.findByName("aa").getPassword());
	}*/
}
