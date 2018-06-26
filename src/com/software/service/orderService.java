package com.software.service;

import java.util.ArrayList;

import com.software.dao.*;
import com.software.domain.Goods;
import com.software.domain.UserInfo;
import com.software.domain.order;

public class orderService {
	private orderDao orderdao=null;
	public orderDao getorderDao() {
		if(orderdao==null){
			orderdao=new orderDao();
		}
		return orderdao;
	}
/*	public Goods getgood(String goodname) {
		if(getGoodDao().findByName(goodname)!=null){
			return getGoodDao().findByName(goodname);
		}
		return getGoodDao().findByName(goodname);
	}*/
	
	public void addOrderOne(order order){
		getorderDao().addItem(order);
	}
	public ArrayList getgoodList(String username){
	return	getorderDao().findByName(username);
	}
	public void delete(String orderId){
		getorderDao().delete(orderId);
	}
	}