 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%String path=request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>

input{
                border: 1px solid #ccc;
                padding: 7px 0px;
                border-radius: 3px;
                padding-left:5px;
                -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
                box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
                -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
                -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
                transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s
            }
            input:focus{
                    border-color: #66afe9;
                    outline: 0;
                    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6);
                    box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6)
            }
            
 .content-form-signup {
    width: 100;
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
</style>
<body>
<jsp:useBean id="user1" scope="session" class="com.software.domain.UserInfo"></jsp:useBean>
<%String username=(String)user1.getUsername(); %>
<%String mail=(String)user1.getMail(); %>
<p align="left">用户名:<%=username %></p>
<p align="left">邮箱:<%=mail %></p>


<div align="center"><button onclick="tiaozhuan()" class="content-form-signup">返回主页</button></div>
<script type="text/javascript">
		function tiaozhuan(){
			window.location.href("./main.jsp");
		}
	</script>
</body>
</html>