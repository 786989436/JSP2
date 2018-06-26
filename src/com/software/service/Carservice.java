package com.software.service;

import java.util.ArrayList;

import com.software.dao.*;
import com.software.domain.Goods;
import com.software.domain.ShopCar;
import com.software.domain.UserInfo;

public class Carservice {
	private ShopDao shopdao=null;
	public ShopDao getShopDao() {
		if(shopdao==null){
			shopdao=new ShopDao();
		}
		return shopdao;
	}
/*	public Goods getgood(String goodname) {
		if(getGoodDao().findByName(goodname)!=null){
			return getGoodDao().findByName(goodname);
		}
		return getGoodDao().findByName(goodname);
	}*/
	public int getNum(String username,String goodname){
		return getShopDao().findByNameAndgoodname(username, goodname);
	}
	public ArrayList getgood(UserInfo user){
	return	getShopDao().findByName(user);
	}
	public ShopCar findByNameAndname(String username, String goodname) {
		return getShopDao().findByNameAndname(username, goodname);
	}
	public void addShopCar(ShopCar shopcar){
		getShopDao().add(shopcar);
	}
	public void changeShopCar(ShopCar shopcar){
		getShopDao().update(shopcar);
	}
	public void delete(ShopCar shopcar){
		getShopDao().delete(shopcar);
	}
	public void clear(ShopCar shopcar){
		getShopDao().clear(shopcar);
	}
	public boolean addOne(String username,String name){
		ShopCar shopcar=(ShopCar)findByNameAndname(username,name);
	
		
		return getShopDao().AddOne(username,shopcar);
	}
	public boolean subOne(String username,String name){
		ShopCar shopcar=(ShopCar)findByNameAndname(username,name);
	
		return getShopDao().SubOne(username,shopcar);
	}
}