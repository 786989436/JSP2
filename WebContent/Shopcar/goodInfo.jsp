<%@page import="com.software.domain.Goods"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String path = request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body background="<%=path%>/img/timgV.jpg">
<%
Goods goods = (Goods)request.getAttribute("goods");

%>
<form action="<%=path %>/Sfdl?action=buy&value=1" method="post">
<%request.setAttribute("goods", goods);%>
<input type="hidden" name="goodsId" value="<%=goods.getId()%>">
<input type="hidden" name="goodsName" value="<%=goods.getName()%>">
<input type="hidden" name="goodsPrice" value="<%=goods.getPrice()%>">
<input type="hidden" name="goodsnum" value="<%=goods.getNum()%>">
<img src="<%=path %>/img/<%=goods.getId()%>.jpg"  width="300" height="300" style="display: inline-block;">

<font color="red" size="5"><p align="left"><%=request.getAttribute("error")==null?"":request.getAttribute("error")%></p></font>

<table width="500" border="1" rules="rows" cellspacing="0" cellpadding="0">
	
	<tr height="50"><td>名称：<%=goods.getName() %></td></tr>
	<tr height="50"><td>价格（元/斤）:<%=goods.getPrice() %></td></tr>
	<tr height="50"><td>库存数量:<%=goods.getNum() %></td></tr>
	<tr height="50" ><td>购买数量：<input type="text" name="buyNum" value="1"></td></tr>
	
	<tr height="50" ><td><input type="submit" name="submit" value="加入购物车"></td></tr>

</table>
</br>  
<a href="<%=path %>/MyWeb/main.jsp">返回至主页</a>
</form>
</body>
</html>