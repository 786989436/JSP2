package com.software.service;

import java.util.ArrayList;

import com.software.dao.*;
import com.software.domain.Goods;

public class Goodservice {
	private GoodDao gooddao=null;
	public GoodDao getGoodDao() {
		if(gooddao==null){
			gooddao=new GoodDao();
		}
		return gooddao;
	}
/*	public Goods getgood(String goodname) {
		if(getGoodDao().findByName(goodname)!=null){
			return getGoodDao().findByName(goodname);
		}
		return getGoodDao().findByName(goodname);
	}*/
	public ArrayList getgood(){
	return	getGoodDao().select();
	}
	public Goods getsingle(String goodname){
		return getGoodDao().findByName(goodname);
	}
	}