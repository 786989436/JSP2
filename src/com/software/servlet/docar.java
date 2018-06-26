package com.software.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.software.domain.*;
import com.software.service.Carservice;


/**
 * Servlet implementation class docar
 */
@WebServlet("/docar")
public class docar extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Carservice carservice = null;

	public Carservice getCarService() {
		if (carservice == null) {
			carservice = new Carservice();
		}
		return carservice;
	}
    /**
     * @see HttpServlet#HttpServlet()
     */
    public docar() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action=(String)request.getParameter("action");
		
		if(action==null)
			action=" ";
		//购买
		if(action.equals("buy")){
			buy(request,response);
		}
		//移除

		else if(action.equals("delete")){
			delete(request,response);
		}
		//清空
		else if(action.equals("clear")){
			clear(request,response);
	
		}
		else if(action.equals("addOne")){
			addOne(request,response);
	
		}
		else if(action.equals("subOne")){
			subOne(request,response);
	
		}
		else if(action.equals("buyone")){
			buyone(request,response);
	
		}
		else if(action.equals("buyall")){
			buyall(request,response);
	
		}
		else if(action.equals("deleteorder")){
			deleteorder(request,response);
	
		}
	}
		protected void buy(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession();
		
		
		UserInfo user1=(UserInfo)request.getSession().getAttribute("user1");
		
		ArrayList buylist=(ArrayList)session.getAttribute("buylist");
		if(buylist==null){
			buylist=new ArrayList()/*getCarService().getgood(user1)*/;
		}
		
		
		ShopDoCar mycar=new ShopDoCar();
		ShopCar shopcar=new ShopCar();
		
		String username=(String)user1.getUsername();
		String goodname=(String)request.getAttribute("goodsName");
		
		String a =request.getAttribute("goodsPrice").toString();

		float price=Float.valueOf(a);
		
		int num=MyTools.strToint(String.valueOf(request.getAttribute("buyNum")));


		float total=((int)((price*num+0.05)*10))/10;
		
		int oldNum=getCarService().getNum(username, goodname);

		//将usr good 信息压入shopcar对象
		shopcar.setUsername(username);
		shopcar.setGoodname(goodname);
		shopcar.setNum(num);
		shopcar.setTotal(total);
		shopcar.setPrice(price);

		//便于获取buylist
		mycar.setBuylist(buylist);
		
		//添加货物
		//由于情况不同需要早ShopDaCar进行数据库操作
		mycar.addItem(shopcar,oldNum);
		
		/*ShopCar single=(ShopCar)mycar.getBuylist().get(i);
		getCarService().addShopCar(single);
*/
		session.setAttribute("buylist", buylist);

		response.sendRedirect(request.getContextPath()+"/MyWeb/main.jsp");
		}	
		

		
		protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			HttpSession session=request.getSession();
			UserInfo user1=(UserInfo)request.getSession().getAttribute("user1");
			
			
			ArrayList buylist=(ArrayList)session.getAttribute("buylist");
			
			String name=request.getParameter("name");
			ShopCar shopcar=new ShopCar();
			ShopDoCar mycar=new ShopDoCar();
			
			shopcar.setUsername(user1.getUsername());
			shopcar.setGoodname(name);
			mycar.setBuylist(buylist);
			mycar.deleteItem(shopcar);
			response.sendRedirect(request.getContextPath()+"/Shopcar/shopcar.jsp");
		}
		protected void deleteorder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			HttpSession session=request.getSession();
			ArrayList orderlist=(ArrayList)session.getAttribute("orderlist");
			
			String orderId=request.getParameter("orderId");
			orderDoCar ordercar=new orderDoCar();
			ordercar.setBuylist(orderlist);
			ordercar.deleteItem(orderId);
			response.sendRedirect(request.getContextPath()+"/MyWeb/order.jsp");
		}
		protected void clear(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			//利用session中的user1，删除用户名与user1相同的所有数据
			HttpSession session=request.getSession();
			UserInfo user1=(UserInfo)request.getSession().getAttribute("user1");
			ArrayList buylist=(ArrayList)session.getAttribute("buylist");
			ShopCar shopcar=new ShopCar();
			shopcar.setUsername(user1.getUsername());
			buylist.clear();
			getCarService().clear(shopcar);
			
			response.sendRedirect(request.getContextPath()+"/Shopcar/shopcar.jsp");
		
	}
		protected void buyone(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			HttpSession session=request.getSession();
			UserInfo user1=(UserInfo)request.getSession().getAttribute("user1");
			ArrayList buylist=(ArrayList)session.getAttribute("buylist");
			
			String name=request.getParameter("name");
			float price=Float.valueOf(request.getParameter("price"));
			int num=Integer.valueOf(request.getParameter("num"));
			float money=Float.valueOf(request.getParameter("money"));
			ShopCar shopcar=new ShopCar();
			ShopDoCar mycar=new ShopDoCar();
			order order=new order();
			orderDoCar ordercar=new orderDoCar();
			
			shopcar.setUsername(user1.getUsername());
			shopcar.setGoodname(name);
			
			Calendar c = Calendar.getInstance();//可以对每个时间域单独修改   
			String year =String.valueOf(c.get(Calendar.YEAR)); 
			String month =String.valueOf(c.get(Calendar.MONTH)); 
			String date =String.valueOf(c.get(Calendar.DATE)); 
			String  hour =String.valueOf(c.get(Calendar.HOUR_OF_DAY)); 
			String minute =String.valueOf( c.get(Calendar.MINUTE)); 
			String second =String.valueOf(c.get(Calendar.SECOND)); 

	
			
			order.setOrdernum(year+month+date+hour+minute+second);
			order.setGoodname(name);
			order.setUsername(user1.getUsername());
			order.setGoodnum(num);
			order.setGoodprice(price);
			order.setGoodtotal(money);
			
		/*	ordercar.setBuylist(orderlist);*/
			ordercar.addItem(order);
			
			
			mycar.setBuylist(buylist);
			mycar.deleteItem(shopcar);
			response.sendRedirect(request.getContextPath()+"/Shopcar/shopcar.jsp");
		}
		
		protected void buyall(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			HttpSession session=request.getSession();
			UserInfo user1=(UserInfo)request.getSession().getAttribute("user1");
			ArrayList buylist=(ArrayList)session.getAttribute("buylist");
			ShopCar shopcar=new ShopCar();
			shopcar.setUsername(user1.getUsername());
			buylist.clear();
			getCarService().clear(shopcar);
			
			response.sendRedirect(request.getContextPath()+"/Shopcar/shopcar.jsp");
		}
		protected void addOne(HttpServletRequest request, HttpServletResponse response) throws IOException {
		     
			System.out.println("1111111");

			request.setCharacterEncoding("utf-8");
			String name=request.getParameter("name");
			System.out.println(name);
			HttpSession session=request.getSession();
			UserInfo user1=(UserInfo)request.getSession().getAttribute("user1");
			String username=(String)user1.getUsername();
			
		
			PrintWriter out = response.getWriter();
			if (getCarService().addOne(username, name)) {
			
				out.print("ok");
				
				
			}

		}  
		      
		    /** 
		     * 商品减 1 
		     * @return 
		     */  
		protected void subOne(HttpServletRequest request, HttpServletResponse response) throws IOException {
		    
			request.setCharacterEncoding("utf-8");
		
			String name=request.getParameter("name");
		
			HttpSession session=request.getSession();
			UserInfo user1=(UserInfo)request.getSession().getAttribute("user1");
			String username=(String)user1.getUsername();
			
			
			PrintWriter out = response.getWriter();
			if (getCarService().subOne(username, name)) {

				out.print("ok"); 
				out.close();
			}	


		} 	
}
