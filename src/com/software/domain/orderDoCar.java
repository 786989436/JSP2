package com.software.domain;

import java.util.ArrayList;

import com.software.domain.Goods;
import com.software.service.orderService;
//可以说这是个工具bean
public class orderDoCar {
	private ArrayList orderlist=new ArrayList();
	private orderService orderservice = null;

	public orderService  getorderService() {
		if (orderservice == null) {
			orderservice = new orderService();
		}
		return orderservice;
	}
	public void setBuylist(ArrayList orderlist){
		this.orderlist=orderlist;
	}
	public ArrayList getBuylist(){
		return orderlist;
	}
	public void addItem(order single){
		if(single!=null){ 
			

				order temp=new order();
				temp.setOrdernum(single.getOrdernum());
				temp.setUsername(single.getUsername());
				temp.setGoodname(single.getGoodname());
				temp.setGoodprice(single.getGoodprice());
				temp.setGoodnum(single.getGoodnum());
				temp.setGoodtotal(single.getGoodtotal());
				orderlist.add(temp);
				getorderService().addOrderOne(temp);
			
			
		}
	}
	
	
	//从购物车移除指定名称商品
	/*public void removeItem(ShopCar single){
		//遍历buylist集合，查找指定名称商品
		for(int i=0;i<buylist.size();i++){
		//获取集合中当前位置商品
		ShopCar temp=(ShopCar)buylist.get(i);
		if(temp.getGoodname().equals(single.getGoodname())){

			if(temp.getNum()>1){
				float price=temp.getTotal()/temp.getNum();
				
				temp.setNum(temp.getNum()-1);

				temp.setTotal(((int)((price*temp.getNum()+0.05)*10))/10);
				getCarService().changeShopCar(temp);
				break;
			}
			else if(temp.getNum()==1){
				buylist.remove(i);
				getCarService().delete(single);
			}
		}
		}
	}*/
	public void deleteItem(String orderId){
		for(int i=0;i<orderlist.size();i++){
			//获取集合中当前位置商品
			order temp=(order)orderlist.get(i);
			if(temp.getOrdernum().equals(orderId)){
				orderlist.remove(i);
				getorderService().delete(temp.getOrdernum());
			}
		}
	}
}
