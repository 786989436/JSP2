package com.software.servlet;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.software.dao.Dao;
import com.software.domain.*;
import com.software.service.Userservice;

/**
 * Servlet implementation class sfzc
 */
@WebServlet("/sfzc")
public class sfzc extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Userservice userservice = null;

	public Userservice getUserService() {
		if (userservice == null) {
			userservice = new Userservice();
		}
		return userservice;
	}   
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public sfzc() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	/*	response.getWriter().append("Served at: ").append(request.getContextPath());*/
		String action1=(String)request.getParameter("action1");
		
		

			
		if(getUserService().isNull()){
			
		request.setAttribute("error", "请您先进行注册！");
		
		request.getRequestDispatcher("/MyWeb/main.jsp").forward(request, response);

		/*response.sendRedirect(request.getContextPath()+"/MyWeb/main.jsp");*/
		
		}
		else{
		if(action1.equals("1")){
			response.sendRedirect(request.getContextPath()+"/MyWeb/login.jsp");
		}
		if(action1.equals("2")){
			response.sendRedirect(request.getContextPath()+"/Sfdl");
		}
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		

		
	}

}
