package com.software.domain;

public class order {
private String ordernum;
private String goodname;
private String username;
private float goodprice;
private int goodnum;
private float goodtotal;

public order(){
	
}
public order(String ordernum, String goodname, String username, float goodprice, int goodnum, float goodtotal) {
	// TODO Auto-generated constructor stub
	super();
	this.ordernum=ordernum;
	this.username = username;
	this.goodname = goodname;
	this.goodprice =goodprice;
	this.goodnum=goodnum;
	this.goodtotal =goodtotal;
}
public String getOrdernum() {
	return ordernum;
}
public void setOrdernum(String ordernum) {
	this.ordernum = ordernum;
}
public String getGoodname() {
	return goodname;
}
public void setGoodname(String goodname) {
	this.goodname = goodname;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public float getGoodprice() {
	return goodprice;
}
public void setGoodprice(float goodprice) {
	this.goodprice = goodprice;
}
public int getGoodnum() {
	return goodnum;
}
public void setGoodnum(int goodnum) {
	this.goodnum = goodnum;
}
public float getGoodtotal() {
	return goodtotal;
}
public void setGoodtotal(float goodtotal) {
	this.goodtotal = goodtotal;
}

}
