package com.software.servlet;

import java.awt.List;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.software.domain.Goods;
import com.software.service.*;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import com.software.domain.*;

/**
 * Servlet implementation class initializartion
 */
@WebServlet("/initializartion")
public class initializartion extends HttpServlet {
	private static ArrayList goodslist=new ArrayList();
	private static final long serialVersionUID = 1L;
	public static Goodservice getGoodService() {
		Goodservice goodservice = null;

		if (goodservice == null) {
			goodservice = new Goodservice();
		}
		return goodservice;
	}
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public initializartion() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String act = request.getParameter("act");
		if(act==null){
	
			displayAllGoods(request,response);
		}else if(act.equals("displayOneGoods")){
		
			displayOneGoods(request,response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		
		/*response.sendRedirect(request.getContextPath()+"/Shopcar/Show.jsp");
		response.sendRedirect(request.getContextPath()+"/MyWeb/main.jsp");
		request.getRequestDispatcher("/Shopcar/Show.jsp").forward(request, response);*/
	}
/*	static{
		goodslist=(ArrayList)getGoodService().getgood();
	}*/
	protected void displayAllGoods(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//查询所有商品
		ArrayList<Goods> goodslist = (ArrayList)getGoodService().getgood();
		request.getSession().setAttribute("goodslist", goodslist);
		//返回json数据，页面用js显示
		JSONArray jArray = new JSONArray();
		
		
		if(goodslist.size()>0){			
			for(Goods goods:goodslist){
				JSONObject obj = new JSONObject();
				obj.put("id", goods.getId());
				obj.put("name", goods.getName());
				obj.put("price", goods.getPrice());
				obj.put("num", goods.getNum());
				jArray.add(obj);
			}
		}
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		String s = jArray.toString();
		out.print(s);
		
		
/*		//将商品list传递到index.jsp
		request.setAttribute("goodsList", goodsList);
		request.getRequestDispatcher("/index.jsp").forward(request, response);*/
	}
	

	/**
	 * 显示商品明细
	 * @param request
	 * @param response
	 * @return
	 * @throws ServletException
	 * @throws IOException
	 */
	protected void displayOneGoods(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String goodname =(String)request.getParameter("goodname");
		//查询一个商品
		Goods goods = getGoodService().getsingle(goodname);
		//将商品list传递到index.jsp
		request.setAttribute("goods", goods);
		request.getRequestDispatcher("/Shopcar/goodInfo.jsp").forward(request, response);
	}
	
	/**
	 * 加入购物车
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	/*protected void addGoods(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserInfo user = (UserInfo)(request.getSession().getAttribute("user"));
		if(user==null){
			response.sendRedirect(request.getContextPath()+"/user/login.jsp");
			return;
		}
		//1、获得加入购物车的商品的id和数量
		int goodsId = MyTools.strToint(request.getParameter("goodsId"));
		int buyNum = MyTools.strToint(request.getParameter("buyNum"));
		String goodsName = request.getParameter("goodsName");
		
		ShopDoCar mycar=new ShopDoCar();
		
		ShopCar shopCar = new ShopCar();
		shopCar.setUsername(user.getUsername());
		shopCar.setId(goodsId);
		shopCar.setNum(buyNum);
		shopCar.setGoodname(goodsName);
		//2、调用service
		
		
		
		mycar.addItem(shopCar);
		ArrayList<ShopCar> shopCarList = shopService.findShopCarByUsername(user.getUsername());
		
		//4、返回购物车页面shopCar.jsp
		request.setAttribute("shopCarList", shopCarList);
		request.getRequestDispatcher("/MyWeb/shopCar.jsp").forward(request, response);
	}*/


}

	/*	String[] names={getGoodService().getgood("apple").,"banana","pear","orange"};
		float[] prices={2,3,4,5};
		
		for(int i=0;i<4;i++){
			Goods good=new Goods();
			good.setName(names[i]);
			good.setPrice(prices[i]);
			good.setNum(1);
			//用来操作定位
			goodslist.add(good);
		}
*/
