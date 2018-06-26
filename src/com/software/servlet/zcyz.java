package com.software.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.software.dao.Dao;
import com.software.domain.*;
import com.software.service.Userservice;
import com.software.utils.JDBC2;

/**
 * Servlet implementation class zcyz
 */
@WebServlet("/zcyz")
public class zcyz extends HttpServlet {
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
    public zcyz() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		   String username = request.getParameter("username");
			String password=String.valueOf(request.getParameter("password"));
			String mail=String.valueOf(request.getParameter("mail"));
			String act=(String)request.getParameter("act");
			
			String action=(String)request.getParameter("action");
			
		if(act.equals("validate")) {validate(request, response);}
	
		else if(action.equals("regist")){
			
		if(username.length()<6||username.length()>16||password.length()<8||password.length()>16||!mail.matches("\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*")) {
			
			
			yanzheng(request, response);
		
		}
		else{
			UserInfo user1=new UserInfo();
			user1.setUsername(username);
			user1.setPassword(password);
			user1.setMail(mail);

			HttpSession session=request.getSession();
			session.setAttribute("user1", user1);
		
				getUserService().getUsersDao().add(user1);
				response.sendRedirect(request.getContextPath()+"/MyWeb/main.jsp");
			}
		}
			
	}
    protected void validate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
        String username = request.getParameter("username");

        if(username.equals("")){
        	out.write("该字段不能为空!");	
        }
        else if(!getUserService().isExist(username)){
        	
				out.write("用户名已存在!");

			}

    }    
    protected void yanzheng(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setAttribute("error","确认无误后再提交！");
		//
		request.getRequestDispatcher("/MyWeb/registered.jsp").forward(request, response);
    }
}
