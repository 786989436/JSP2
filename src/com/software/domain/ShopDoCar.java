package com.software.domain;

import java.util.ArrayList;

import com.software.domain.Goods;
import com.software.service.Carservice;
//可以说这是个工具bean
public class ShopDoCar {
	private ArrayList buylist=new ArrayList();
	private Carservice carservice = null;

	public Carservice getCarService() {
		if (carservice == null) {
			carservice = new Carservice();
		}
		return carservice;
	}
	public void setBuylist(ArrayList buylist){
		this.buylist=buylist;
	}
	public ArrayList getBuylist(){
		return buylist;
	}
	public void addItem(ShopCar single,int oldNum){
		if(single!=null){ 
			if(buylist.size()==0){
				ShopCar temp=new ShopCar();
				temp.setUsername(single.getUsername());
				temp.setGoodname(single.getGoodname());
				temp.setPrice(single.getPrice());
				temp.setNum(single.getNum());
				temp.setTotal(single.getTotal());
				buylist.add(temp);
				getCarService().addShopCar(temp);
			}
			else{
				int i=0;
				//遍历butlist集合对象，判断是否存在相同元素
				for(;i<buylist.size();i++){
					//或取buylist当前元素
					ShopCar temp=(ShopCar)buylist.get(i);
					/*if(temp.getGoodname().equals(single.getGoodname())){
						//如果相同，说明购买了该产品，只需要将商品购买数量+1；
						temp.setNum(temp.getNum()+1);
						break;
					}*/
					if(temp.getGoodname().equals(single.getGoodname())&&temp.getUsername().equals(single.getUsername())){
						//如果相同，说明购买了该产品，只需要将商品购买数量+1；
						temp.setNum(single.getNum()+oldNum);
						temp.setTotal(((int)((single.getPrice()*temp.getNum()+0.05)*10))/10);
						getCarService().changeShopCar(temp);
						break;
					}
				
				}
				//添加新货物
					if(i>=buylist.size()){
						ShopCar temp1=new ShopCar();
						temp1.setUsername(single.getUsername());
						temp1.setGoodname(single.getGoodname());
						temp1.setPrice(single.getPrice());
						temp1.setNum(single.getNum());
						temp1.setTotal(single.getTotal());
						buylist.add(temp1);
						getCarService().addShopCar(temp1);

				}
			}
		}
	}
	
	
	//从购物车移除指定名称商品
	public void removeItem(ShopCar single){
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
	}
	public void deleteItem(ShopCar single){
		for(int i=0;i<buylist.size();i++){
			//获取集合中当前位置商品
			ShopCar temp=(ShopCar)buylist.get(i);
			if(temp.getGoodname().equals(single.getGoodname())){
				buylist.remove(i);
				getCarService().delete(single);
			}
		}
	}
}
