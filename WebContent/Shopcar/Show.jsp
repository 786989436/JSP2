 
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

 
<jsp:useBean id="myCar" class="com.software.service.Carservice" scope="session"></jsp:useBean>

<%UserInfo user1=(UserInfo)request.getSession().getAttribute("user1"); %>

<!-- 查看购物车时先试着加载数据库如果没有再新建购物车列表 -->
<%ArrayList buylist=(ArrayList)myCar.getgood(user1); 
if(buylist==null){
 buylist=(ArrayList)session.getAttribute("buylist");
 }
 else{
/* 	将购物车列表上传便于登录查看购物车时直接操作 */
	session.setAttribute("buylist",buylist);
 }%>
 
 
	<%float total=0; %>	
<table name="table1" id="table1" border="1" width="600" rules="none" cellspacing="0" cellpadding="0" align="center">
<tr height="50"><td colspan="6" align="center">购买结果如下</td></tr>
<tr align="center" height="30" bgcolor="lightgrey">
	<td width="25%">名称</td>
	<td>价格</td>
	<td>数量</td>
	<td>总价</td>
	<td>移除(-1/次)</td>
	<td>删除</td>
</tr>
<% if(buylist==null||buylist.size()==0) {%>
<tr height="100"><td colspan="6" align="center">您的购物车为空！</td></tr>
<%}else{
	 for(int i=0;i<buylist.size();i++){
		ShopCar good=(ShopCar)buylist.get(i);
		String name=good.getGoodname();
		float price=good.getTotal()/good.getNum();
		
		int num=good.getNum();
		float money=good.getTotal();
 		total+=money;
 		out.println(price);
	%>

<tr align="center" height="50">
<td id="name1" name="name1"><%=name %></td>

<td><%=money/num %></td>
<td>
<input type="button" value="-" onclick="subOne('<%=name%>');"/> 

<input type="text" min="1" value=<%=num %> style="width:30px"> </input>

<input type="button" value="+" onclick="addOne('<%=name%>');"/>

</td> 

<td id="name2" name="name2"><%=money %></td>
<td>
<a href="<%=path %>/docar?action=remove&name=<%=name%>">移除</a>
</td>
<td>
<a href="<%=path %>/docar?action=delete&name=<%=name%>">删除</a>
</td>
</tr>

<% 
	 }

}
%>

<tr height="50" align="center"><td colspan="6">应付金额:<%=total %></td></tr>

<tr height="50" align="center">
	<td colspan="2"><a href="<%=path %>/MyWeb/main.jsp">继续购物</a></td>
	<td colspan="1"><a href="<%=path %>/MyWeb/order.jsp">购买</a></td>
	
	<td colspan="1"><a href="<%=path %>/docar?action=clear">清空购物车</a></td>
	
	<td colspan="2"><a href="<%=path %>/MyWeb/main.jsp">返回至主页</a></td>
</tr>
</table>
</body>
</html>