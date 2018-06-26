package com.software.domain;

public class Goods  {
private String name;
private float price;
private int num;
private int Id;
public int getId() {
	return Id;
}
public void setId(int id) {
	Id = id;
}
public Goods(){};
public Goods(String name, float price,int num,int Id) {
	super();
	this.name = name;
	this.price = price;
	this.num=num;
	this.Id=Id;
}

public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public float getPrice() {
	return price;
}
public void setPrice(float price) {
	this.price = price;
}
public int getNum() {
	return num;
}
public void setNum(int num) {
	this.num = num;
}

}
