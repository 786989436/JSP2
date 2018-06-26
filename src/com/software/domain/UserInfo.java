package com.software.domain;

public class UserInfo {
 private static String username;
 private static String password; 
 private static String status;
 private static String mail;
 public UserInfo(){};
public UserInfo(String username, String password,String mail) {
		super();
		this.username = username;
		this.password = password;
		this.mail=mail;
	}
 
 public static String getStatus() {
	return status;
}
public static void setStatus(String status) {
	UserInfo.status = status;
}

 public static String getMail() {
	return mail;
}
public void setMail(String mail) {
	this.mail = mail;
}

public static String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}

public void setPassword(String password) {
	this.password = password;
}
public static String getPassword() {
	return password;
}

 
}
