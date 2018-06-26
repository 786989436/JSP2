package com.software.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.software.domain.Goods;
import com.software.domain.MyTools;
import com.software.domain.UserInfo;

/**
 * Servlet implementation class Sfdl
 */
@WebServlet("/Sfdl")
public class Sfdl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Sfdl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*response.getWriter().append("Served at: ").append(request.getContextPath());*/
		String action=String.valueOf(request.getParameter("action"));
		
		String value=String.valueOf(request.getParameter("value"));
		

		UserInfo user1=(UserInfo)request.getSession().getAttribute("user1");
		String status=user1.getStatus();
		//判断登录状态
		if(status=="1"){
			
			
			if(value.equals("1")){
				int Id=MyTools.strToint(String.valueOf(request.getParameter("goodsId")));
				String name=request.getParameter("goodsName");
				int goodsnum=MyTools.strToint(String.valueOf(request.getParameter("goodsnum")));
				String a =(String)request.getParameter("goodsPrice");
				float price=Float.parseFloat(a);
				int num=MyTools.strToint(String.valueOf(request.getParameter("buyNum")));
				request.setAttribute("goodsName", name);
				request.setAttribute("goodsPrice", price);
				request.setAttribute("buyNum", num);
				//带request跳转页面，记得加上forward


				request.getRequestDispatcher("/docar?action=buy").forward(request, response);;
				
			}
			else{
				if(value.equals("2")){
					response.sendRedirect(request.getContextPath()+"/Shopcar/shopcar.jsp");
				}
				else{
					response.sendRedirect(request.getContextPath()+"/MyWeb/my.jsp");
				}
			}
		
		}
		
		else{
			//购买需要登陆的验证
			if(action.equals("buy")){
				int Id=MyTools.strToint(String.valueOf(request.getParameter("goodsId")));
				String name=request.getParameter("goodsName");
				int goodsnum=MyTools.strToint(String.valueOf(request.getParameter("goodsnum")));
				String a =(String)request.getParameter("goodsPrice");
				float price=Float.parseFloat(a);
				int num=MyTools.strToint(String.valueOf(request.getParameter("buyNum")));
			Goods goods=new Goods();
			goods.setId(Id);
			goods.setName(name);
			goods.setNum(goodsnum);
			goods.setPrice(price);
			request.setAttribute("goods", goods);
				request.setAttribute("error","请返回主页先进行登录！");
				request.getRequestDispatcher("/Shopcar/goodInfo.jsp").forward(request, response); 

			}
			
			else{
				request.setAttribute("error","请您先登录！");
				request.getRequestDispatcher("/MyWeb/main.jsp").forward(request, response); 
			}
				
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		doGet(request, response);
	}

}
