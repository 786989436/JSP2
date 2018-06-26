<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.*" %>
<%String path=request.getContextPath();%>
<%@ page import="com.software.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.logo {
	height: 250px;
	display: inline-block;
	position: relative;
	width: 250px;
	overflow: hidden;
	border-radius: 50%;
	left: 50px;
	top: 30px;
}
</style>
</head>

<body background="<%=path%>/img/timgV.jpg">

<!-- //定义JAVAbean -->
<jsp:useBean id="user1" scope="session" class="com.software.domain.UserInfo"></jsp:useBean>
<%String status=(String)user1.getStatus(); %>
<%String username=(String)user1.getUsername(); %>
<table width="1538">
<tr>
<td width="462" height="428"><img src="<%=path %>/img/sss.jpg" width="362" height="231" class="logo"></td>
<!-- 显示用户名 -->
<%if(status==null){%>
<td width="661"><font size="45" >welcome to shopping</font></td>
<% }
else{%><td width="661"><font size="45" >welcome to <%=username %>shopping</font></td>
<%} %>


<td width="399">
<jsp:include page="JSP2.jsp"></jsp:include>
</td>
</tr>
</table>
<div align="center"></div>
<div align="right">

<!-- 验证是否注册 -->
<font color="red" size="20"><p align="left"><%=request.getAttribute("error")==null?"":request.getAttribute("error")%></p></font>

<hr size="5" color="black"></hr>

<%-- <!-- 生成自动随机数 -->
<% Random a = new Random();    
if(a.nextInt(10)==1){%>
<jsp:forward page="login.jsp"></jsp:forward>
<%}%>
 --%>
 
 
<font size="5"><a href="<%=request.getContextPath() %>/sfzc?action1=1">&#30331;&#24405; </a>|<a href="<%=request.getContextPath() %>/MyWeb/registered.jsp">&#27880;&#20876;</a>|<a href="<%=request.getContextPath() %>/sfzc?action1=2">个人信息</a>|<a href="<%=path %>/Sfdl?value=2">查看购物车</a>|<a href="<%=path %>/Sfdl?value=3">查看订单</a>|<a href="<%=request.getContextPath() %>/MyWeb/zx.jsp">注销</a>|<a href="<%=path %>/Mail/sendmail.jsp">反馈</a></font>
<hr  color="black">

<%-- <%if(username!=null){
	%>
<jsp:include page="/Shopcar/Index.jsp"></jsp:include>
<jsp:include page="/Shopcar/Show.jsp"></jsp:include>
<%}%> --%>
<%-- <img src="<%=path %>/img/timg[9].jpg" width="1574" height="718"> --%>


</hr>

</div>
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

	//初始化XmlHttpRequest对象
	var httpReq = createXmlHttpRequest();	
	//处理返回信息的函数
	function processResponse() {
		if(httpReq.readyState==4){//4代表请求完成，信息返回
  	        if(httpReq.status==200){//信息成功返回，处理信息				
  	        	var goodsJson=eval(httpReq.responseText); 
  	        	var lineNumber=goodsJson.length; 
  	        	var row; 
  	        	var col; 
  	        	if(lineNumber>0){ 
	  	        	for(var i=0;i<lineNumber;i++){ 
		  	        	row = table1.insertRow(table1.rows.length);
		  	        	row.insertCell(0).innerHTML ="&nbsp;"+goodsJson[i].id; 
		  	        	row.insertCell(1).innerHTML ="&nbsp;"+goodsJson[i].name; 
		  	        	row.insertCell(2).innerHTML ="&nbsp;"+goodsJson[i].price; 
		  	        	row.insertCell(3).innerHTML ="&nbsp;"+goodsJson[i].num; 
		  	         	row.insertCell(4).innerHTML ="&nbsp;<a href='<%=path%>/initializartion?act=displayOneGoods&goodname="+goodsJson[i].name+"'>明细</a>"; 
		  	        	row.setAttribute("align", "center"); 
	  	        	}
	  	        } 
            }
      	}

	}
	var url="<%=path%>/initializartion";
	//建立对服务器的调用
	httpReq.open("get",url,true);
	//状态改变的事件触发器,客户端的状态改变会触发readystatechange事件，调用相应的事件处理函数
	httpReq.onreadystatechange=processResponse;
	//发送数据
	httpReq.send(null);
</script>
<table id="table1" width="900" border="1" rules="rows" cellspacing="0" cellpadding="0">
	<tr height="70" bgcolor="lightgrey"><td>  编号</td><td>   名称</td><td>  价格（元/斤）</td><td>   库存数量</td><td>操作</td></tr>
</table>
<hr color="black"></hr>
</body>
<jsp:include page="bottom.jsp"></jsp:include>
</html>