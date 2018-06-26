<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%-- <%@ page contentType="text/html;charset=gb2312" %>  --%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.software.domain.*" %>
<%@ page import="com.software.servlet.docar" %>
<%String path=request.getContextPath();%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">  

function createXmlHttpRequest(){
	
	   var httpReq ;
	   try{    //Firefox, Opera 8.0+, Safari…
	 		httpReq=new XMLHttpRequest();
	    }catch (e){
	            try{    //Internet Explorer
	 		      httpReq =new ActiveXObject("Msxml2.XMLHTTP");
	            }catch (e){
	                  try{
	 			 httpReq=new ActiveXObject("Microsoft.XMLHTTP");
	                  }catch (e){}  
	           }
	    }
	   return httpReq ; 
	}
var httpReq = createXmlHttpRequest();	
// 删除单个商品  

// 商品数量加 1  
 function addOne(name){

/*  var name =  document.getElementById("name1").innerHTML;  */
httpReq.open("post","<%=path%>/docar?action=addOne&name="+name, "true");  
httpReq.send(null);  
httpReq.onreadystatechange=function(){  
         if(httpReq.readyState==4&&httpReq.status==200){  
             if(httpReq.responseText=="ok"){  
               /*   alert(name);   */
                 window.location.reload(); 
             }else{  
                 alert("添加失败！");  
             }  
         }  
     }  

 }   
 // 商品数量减 1  
function subOne(name){      
	/* var name =  document.getElementById("name1").innerHTML;  */

httpReq.open("post", "<%=path%>/docar?action=subOne&name="+name, "true");  
httpReq.send(null);       
httpReq.onreadystatechange=function(){  
         if(httpReq.readyState==4&&httpReq.status==200){  
             if(httpReq.responseText=="ok"){  
            /*      alert(name);   */
                 window.location.reload();  
             }else{  
                 alert("失败！");  
             }  
         }  
     }  
   
 }  

</script> 
</head>
<body background="<%=path%>/img/timgV.jpg">

 
<jsp:useBean id="myOrder" class="com.software.service.orderService" scope="session"></jsp:useBean>

<%UserInfo user1=(UserInfo)request.getSession().getAttribute("user1"); %>

<!-- 查看购物车时先试着加载数据库如果没有再新建购物车列表 -->
<%ArrayList orderlist=(ArrayList)myOrder.getgoodList((String)user1.getUsername()); 
if(orderlist==null){
orderlist=(ArrayList)session.getAttribute("orderlist");
 }
 else{
/* 	将购物车列表上传便于登录查看购物车时直接操作 */
	session.setAttribute("orderlist",orderlist);
 }%>
 
 
	<%float total=0; %>	
<table name="table1" id="table1" border="1" width="700" rules="none" cellspacing="0" cellpadding="0" align="center">
<tr height="50"><td colspan="7" align="center">购买结果如下</td></tr>
<tr align="center" height="30" bgcolor="lightgrey">
	<td >订单号</td>
	<td>商品名</td>
	<td>买家</td>
	<td>价格</td>
	<td>数量</td>
	<td>总价</td>
	<td>操作</td>

</tr>
<% if(orderlist==null||orderlist.size()==0) {%>
<tr height="100"><td colspan="7" align="center">您的订单为空！</td></tr>
<%}else{
	 for(int i=0;i<orderlist.size();i++){
		order good=(order)orderlist.get(i);
		String orderId=good.getOrdernum();
		String name=good.getGoodname();
		String buyer=good.getUsername();
		float price=good.getGoodtotal()/good.getGoodnum();
		
		int num=good.getGoodnum();
		float money=good.getGoodtotal();

	%>

<tr align="center" height="50">
<td><%=orderId %></td>
<td><%=buyer %></td>
<td id="name1" name="name1"><%=name %></td>
<td><%=money/num %></td>

<td id="name2" name="name2"><%=num %></td>

<td id="name2" name="name2"><%=money %></td>

<td>
<a href="<%=path %>/docar?action=deleteorder&orderId=<%=orderId%>">删除</a>
</td>
</tr>

<% 
	 }

}
%>



<tr height="50" align="center">
	<td colspan="3"><a href="<%=path %>/MyWeb/main.jsp">继续购物</a></td>

	
	<td colspan="4"><a href="<%=path %>/MyWeb/main.jsp">返回至主页</a></td>
</tr>
</table>
</body>
</html>