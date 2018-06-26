package com.software.domain;

public class ShopCar {
	private String username;
	private String goodname;
	private int num;
	private float total;
	private float price;
	private int Id;
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public ShopCar(){};
	public ShopCar(String username,String goodname ,int num,float total) {
		super();
		this.username = username;
		this.goodname = goodname;
		this.total = total;
		this.num=num;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getGoodname() {
		return goodname;
	}
	public void setGoodname(String goodname) {
		this.goodname = goodname;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public float getTotal() {
		return total;
	}
	public void setTotal(float total) {
		this.total = total;
	}
}
