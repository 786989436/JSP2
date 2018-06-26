package com.software.service;

import com.software.dao.*;
import com.software.domain.UserInfo;

public class Userservice {
	private Dao userDao=null;
	public Dao getUsersDao() {
		if(userDao==null){
			userDao=new Dao();
		}
		return userDao;
	}
	public boolean login(String username, String password) {
		if(getUsersDao().findByNameAndPwd(username, password)!=null){
			return true;
		}
		return false;
	}
	public UserInfo getUser(String username, String password) {
		if(getUsersDao().findByNameAndPwd(username, password)!=null){
			return getUsersDao().findByNameAndPwd(username, password);
		}
		return getUsersDao().findByNameAndPwd(username, password);
	}
	public boolean isNull() {
		if(getUsersDao().select()){
			return true;
		}
		return false;
	}
	public boolean isExist(String username) {
		if(getUsersDao().findByName(username)==null){
			return true;
		}
		return false;
	}
}