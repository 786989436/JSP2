<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.software.domain.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%UserInfo user1=(UserInfo)request.getSession().getAttribute("user1"); %>
<%String status=(String)user1.getStatus();%>
<%if(status==null) {%>
<jsp:forward page="/Sfzx"></jsp:forward>
<%}
else{ 
	System.out.print("llll..");
	 
 	session.invalidate();
	request.getSession().removeAttribute("user1");
	user1.setStatus(null);

	 
	 %>

<meta http-equiv="refresh" content="3;URL=main.jsp"> </span> <span style="font-size:24px;">
<p align="center">注销成功，3秒后跳转至主页面</p>
<%} %>

</body>
</html>