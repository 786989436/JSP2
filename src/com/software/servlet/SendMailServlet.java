package com.software.servlet;

import java.io.IOException;
import java.util.Date;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SendMailServlet")
public class SendMailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public SendMailServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			request.setCharacterEncoding("utf-8");
			String from=request.getParameter("from");
		    String password=request.getParameter("password");
		    String smtp=request.getParameter("smtp");
			String to=request.getParameter("to");
			String subject=request.getParameter("subject");
			String messageText=request.getParameter("content");
			//生成smtp主机名称
			
		    //建立邮件会话
			Properties pro=new Properties();
		    pro.put("mail.smtp.host","stmp.163.com");
		    pro.put("mail.smtp.auth","true");
		    
		    Session session=Session.getInstance(pro);
		    session.setDebug(true);
		    //新建一个消息对象
		    MimeMessage message=new MimeMessage(session);
		    //设置发件人
		    InternetAddress from_mail=new InternetAddress(from);
		    message.setFrom(from_mail);
		   //设置收件人
		    InternetAddress to_mail=new InternetAddress(to);
		    message.setRecipient(Message.RecipientType.TO ,to_mail);
		    //设置主题
		    message.setSubject(subject);
		    //设置内容
		    message.setText(messageText);
		    //设置发送时间
		    message.setSentDate(new Date());
		    message.saveChanges();  //保证报头域同会话内容保持一致

		    //发送邮件
		    Transport transport =session.getTransport("smtp");
		    transport.connect(smtp,from,password);
		    transport.sendMessage(message,message.getAllRecipients());
		    transport.close();
		    
		    response.sendRedirect(request.getContextPath()+"/Mail/result.jsp");
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
