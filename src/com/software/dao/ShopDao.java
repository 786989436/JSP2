package com.software.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.software.domain.*;
import com.software.utils.*;

public class ShopDao {
	private Connection conn = null;
	private Statement stm = null;
	private ResultSet rs = null;

	
/*	public boolean  select() {
		try {
			conn = JDBC2.getConn();
			stm = conn.createStatement();
			rs = stm.executeQuery("select * from user");
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
*/
	
	public void add(ShopCar shopcar) {
		try {
			conn = JDBC2.getConn();
			stm = conn.createStatement();
			stm.executeUpdate("insert into shopcar values('" + shopcar.getUsername()
					+ "','" + shopcar.getGoodname() + "','"+shopcar.getNum()+"','" + shopcar.getTotal() + "')");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBC2.close(rs, stm, conn);
		}
	}

	public void delete(ShopCar shopcar) {
		try {
			conn = JDBC2.getConn();
			stm = conn.createStatement();
			stm.executeUpdate("delete from shopcar where username='" + shopcar.getUsername()
					+ "'and GoodName='"+ shopcar.getGoodname()+"'");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBC2.close(rs, stm, conn);
		}
	}
	public void clear(ShopCar shopcar) {
		try {
			conn = JDBC2.getConn();
			stm = conn.createStatement();
			stm.executeUpdate("delete from shopcar where username='" + shopcar.getUsername()
					+ "'");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBC2.close(rs, stm, conn);
		}
	}
	
	public void update(ShopCar shopcar) {
		try {
			conn = JDBC2.getConn();
			stm = conn.createStatement();
			stm.executeUpdate("update shopcar set GoodNum='"
					+ shopcar.getNum() + "', Total='" + shopcar.getTotal()
					+ "' where username='" + shopcar.getUsername() + "'and GoodName='"+shopcar.getGoodname()+"'");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBC2.close(rs, stm, conn);
		}
	}

	public ArrayList findByName(UserInfo user) {
		ArrayList buylist=new ArrayList();
		ShopCar buyer=new ShopCar();
		try {
			conn = JDBC2.getConn();
			stm = conn.createStatement();
			rs = stm.executeQuery("select * from shopcar where username='"
					+ user.getUsername() + "'");
			while(rs.next()) {
				buyer = new ShopCar(rs.getString("username"),
						rs.getString("GoodName"),
						rs.getInt("GoodNum"),
						rs.getFloat("Total"));
			buylist.add(buyer);			
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBC2.close(rs, stm, conn);
		}
		return buylist;
	}

	public int findByNameAndgoodname(String username, String goodname) {
		UserInfo user = null;
		int goodnum = 0;
		try {
			conn = JDBC2.getConn();
			stm = conn.createStatement();
			rs = stm.executeQuery("select * from shopcar where username='"
					+ username + "' and GoodName='" + goodname + "'");
			while (rs.next()) {
				goodnum= rs.getInt("GoodNum");

			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBC2.close(rs, stm, conn);
		}
		return goodnum;
	}
	public ShopCar findByNameAndname(String username, String goodname) {
		UserInfo user = null;
		ShopCar good=new ShopCar();
		try {
			conn = JDBC2.getConn();
			stm = conn.createStatement();
			rs = stm.executeQuery("select * from shopcar where username='"
					+ username + "' and GoodName='" + goodname + "'");
			while (rs.next()) {
				good = new ShopCar(rs.getString("username"),
						rs.getString("GoodName"),
						rs.getInt("GoodNum"),
						rs.getFloat("Total"));

			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBC2.close(rs, stm, conn);
		}
		return good;
	}
	public boolean AddOne(String username, ShopCar shopcar) {
		try {
			conn = JDBC2.getConn();
			stm = conn.createStatement();
			stm.executeUpdate("update shopcar set GoodNum='"+shopcar.getNum()+"'+1 ,Total='"+shopcar.getTotal()/shopcar.getNum()*(shopcar.getNum()+1)+"'  where username='" + username + "'and GoodName='"+shopcar.getGoodname()+"'");
			System.out.println(shopcar.getPrice()+"sadsadasdas");
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBC2.close(rs, stm, conn);
		}
		return false;
	}
	
public boolean SubOne(String username,ShopCar shopcar) {
	try {
		conn = JDBC2.getConn(); 
		stm = conn.createStatement();					
		stm.executeUpdate(" update shopcar set GoodNum='"+shopcar.getNum()+"'-1,Total='"+shopcar.getTotal()/shopcar.getNum()*(shopcar.getNum()-1)+"' where username='" + username + "'and GoodName='"+shopcar.getGoodname()+"'");
		rs = stm.executeQuery("select * from shopcar where username='"
		
				+ username +"' and GoodName='" + shopcar.getGoodname() + "'");	
		if (rs.next()) {
			int i=rs.getInt("GoodNum");
			if (i<=0) {
				stm.executeUpdate("update shopcar set GoodNum=1,Total='"+shopcar.getTotal()+"' where username='" + username + "'and GoodName='"+shopcar.getGoodname() +"'");
			}
			return true;
		}
			
		//是自动清零		
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} finally {
		JDBC2.close(rs, stm, conn);
	}
	return false;
}
/*	public static void main(String[] args) throws Exception {
		Dao usersDao = new Dao();
		usersDao.add(new UserInfo("3", "3","9@q.com"));
		// usersDao.delete("3");
		usersDao.update("3", new UserInfo("aa", "aa","10@q.com"));
		System.out.println(usersDao.findByName("aa").getPassword());
	}*/
}