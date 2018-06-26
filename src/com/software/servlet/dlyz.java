package com.software.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.software.dao.Dao;
import com.software.domain.*;
import com.software.utils.JDBC1;
import com.software.service.*;
/**
 * Servlet implementation class dlyz1
 */
@WebServlet("/dlyz")
public class dlyz extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String UserInfo = null;
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
    public dlyz() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*response.getWriter().append("Served at: ").append(request.getContextPath());*/

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		UserInfo user1=(UserInfo)request.getSession().getAttribute("user1");
/*		String username=user1.getUsername();
		String password=user.1getPassword();*/
		
		String userName=(String)request.getParameter("userName");
		String passWord=(String)request.getParameter("passWord");
		

		UserInfo user=new UserInfo();
		user=(UserInfo)getUserService().getUser(userName, passWord);
		
		String username=(String)user.getUsername();
		String password=(String)user.getPassword();
		String mail=(String)user.getMail();
		
		if(getUserService().isNull()==true){
			request.setAttribute("error","请返回主页进行注册!");
			request.getRequestDispatcher("/MyWeb/login.jsp").forward(request, response); 
		}
		else{
			/*if(userName.equals(null)&&passWord.equals(null)){
				request.setAttribute("error","不能为空");
				request.getRequestDispatcher("/MyWeb/login.jsp").forward(request, response); 
				
			}
			else{
				String username=(String)user.getUsername();
				String password=(String)user.getPassword();
				String mail=(String)user.getMail();
				System.out.println(username);
				System.out.println(userName);
				System.out.println(password);
				System.out.println(passWord);*/
			if(getUserService().login(userName, passWord)){
					user1.setStatus("1");
					user1.setUsername(username);
					user1.setPassword(password);
					user1.setMail(mail);
					response.sendRedirect(request.getContextPath()+"/MyWeb/main.jsp");
				}
				else{
					request.setAttribute("error","用户名或密码错误！");
					request.getRequestDispatcher("/MyWeb/login.jsp").forward(request, response); 
				}
			/*}*/
		
	}
		

		

/*		<jsp:useBean id="user" scope="session" class="com.bean.UserInfo"></jsp:useBean>
		<%
		String username=user.getUsername();
		String password=user.getPassword();
		String userName=String.valueOf(request.getParameter("userName"));
		String passWord=String.valueOf(request.getParameter("passWord"));
		%>

		<%if(username.equals(userName)&&password.equals(passWord)){%>
			<jsp:setProperty property="userName" name="user"/>
			<jsp:setProperty property="passWord" name="user"/>
			<jsp:forward page="main.jsp"></jsp:forward>
		<%}
		else {%>
			<jsp:include page="login.jsp"></jsp:include>
			<font size="36" color="red" ><p align="center">账号或密码错误，请重新输入</p></font>
		<%}%>*/
	}

}
