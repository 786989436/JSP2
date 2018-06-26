<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%String path = request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>/*重置样式*/
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr,
acronym, address, big, cite, code, del, dfn, em, img, ins, kbd, q, s, samp, small, strike, strong, sub
, sup, tt, var, b, u, i, dl, dt, dd, ol, ul, li, fieldset, form, label, legend, table, caption, tbody,
tfoot, thead, tr, th, td, article, aside, canvas, details, embed, figure, figcaption, footer, header,
hgroup, menu, nav, output, section, summary, time, mark, audio, video {
    margin: 0;
    padding: 0;
    border: 0
}
body {
    font-family: "微软雅黑";
    background:<%=path%>/img/timgV.jpg;
}

/*header*/
.header-line {
    width: 100%;
    height: 4px;
    background: #0dbfdd;
}

/*content*/
.content {
    width: 28%;
    margin: 70px auto 0;
    text-align: center;
}
.content-logo {
    width: 80px;
    height: 80px;
}
.content-title {
    margin: 10px 0 25px 0;
    font-size: 2em;
    color: #747474;
    font-weight: normal;
}
.content-form {
    width: 100%;
    padding: 50px 0 4px;
    border: 1px solid  #dedede;
    text-align: center;
    background: #fff;
}
.content-form form div {
    margin-bottom: 19px;
}
.content-form form .user,
.content-form form .mail,
.content-form form .password {
    width: 60%;
    height: 20px;
    padding: 10px;
    font-size: 1em;
    border: 1px solid  #cccbcb;
    border-radius: 7px;
    letter-spacing: 1px;
}
.content-form form input:focus {
    outline: none;
    -webkit-box-shadow: 0 0 5px #0dbfdd;
            box-shadow: 0 0 5px #0dbfdd;
}
.content-form-signup {
    width: 84%;
    margin: 0 auto;
    padding: 10px;
    border: 1px solid  #cccbcb;
    border-radius: 7px;
    font-size: 1em;
    font-weight: bold;
    color: #fff;
    background: #0dbfdd;
    cursor: pointer;
}
.content-form-signup:hover {
    background: #0cb3d0;
}
.content-form-signup:focus {
    outline: none;
    border: 1px solid  #0cb3d0;
}
.content-login-description {
    margin-top: 25px;
    line-height: 1.63636364;
    color: #747474;
    font-size: .91666667rem;
}
.content-login-link {
    font-size: 16px;
    color: #0dbfdd;
    text-decoration: none;
}

/*输入框无内容便提示*/
#remind_1,
#remind_2 {
    width: 76%;
    margin: 0 auto 2px;
    text-align: left;
    font-size: .2em;
    color: #f00;
}</style>
</head>
<script type="text/javascript">
function   createXmlHttpRequest(){
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
function usernameValidate(){
	var username = document.form1.username.value;
	httpReq.open("post"," <%=path%>/zcyz", "true");
	httpReq.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
	httpReq.onreadystatechange=processResponse;
	httpReq.send("act=validate&username="+username);
}
function   processResponse() {// 处理返回信息的函数
	if(httpReq.readyState==4){
		if(httpReq.status==200){
			document.getElementById("usernameInfo").innerHTML=httpReq.responseText;
		}
	}
}

</script>
<body background="<%=path%>/img/timgV.jpg">
 <header>
        <div class="header-line"></div>
    </header>
    <div class="content">
        
        <h1 class="content-title">注册</h1>
        <div class="content-form">
            <form id="form1" name="form1" method="post" action="<%=path %>/zcyz?action=regist">
                <div id="change_margin_1">
                 <input type="hidden" name="act" value="register"/> 
                    <!-- <input class="user" type="text" name="username"  onblur="oBlur_1()" onfocus="oFocus_1()"> -->
                    
           账号：         <input  class="user" name="username" type="text" id="username" onblur="usernameValidate()" placeholder="请输入用户名6-16位"/><br/>
  				<font color="red" id="usernameInfo"></font>
  				
                </div>
                <!-- input的value为空时弹出提醒 -->
                <p id="remind_1"></p>
                <div id="change_margin_2">
                        密码：<input class="password" type="password" name="password" placeholder="请输入密码8-16位" onblur="oBlur_2()" onfocus="oFocus_2()">
              </div> 
                <div id="change_margin_2"> 
              邮箱:  <input class="mail" type="mail" name="mail" placeholder="请填写正确的邮箱格式" onblur="oBlur_3()" onfocus="oFocus_3()">
 					
 				</div> 
 				  <font color="red" id="usernameInfo"></font><br/>
				 <br /><font color="red"><%=request.getAttribute("error")==null?"":request.getAttribute("error")%></font>
                <!-- input的value为空时弹出提醒 -->
                <p id="remind_2"></p>
                <div id="change_margin_3">
                    <input class="content-form-signup" type="submit" name="zhuce" value="注册"> 
                </div>
               <a href="<%=request.getContextPath() %>/MyWeb/main.jsp">返回首页</a>
            </form>
           	
        </div>
    </div>
<script src="js/common_form_test.js"></script>
</body>
</html>