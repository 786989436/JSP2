<%@ page contentType="text/html; charset=utf-8" language="java" %>
 <%String path = request.getContextPath(); %>
<html>
<head>
<title>发送普通文本格式的E-mail</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
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
<script language="javascript">
function checkform(myform){
	for(i=0;i<myform.length;i++){
		if(myform.elements[i].value==""){
			alert(myform.elements[i].title+"不能为空！");
			myform.elements[i].focus();
			return false;
		}
	}
}
</script>
</head>

<body background="<%=path%>/img/timgV.jpg">
<h3 align="center"><strong><font size="50">反馈</font></strong></h3>
<hr color="black">
<a href="<%=path %>/MyWeb/main.jsp">返回主页</a>
<form name="form1" method="post" action="<%=path %>/SendMailServlet" onSubmit="return checkform(form1)">
<table width="800" height="454"  border="0" align="center" cellpadding="0" cellspacing="0" background="images/bg.jpg">
  <tr valign="top">
    <td height="247">&nbsp;</td>
    <td valign="top"><table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td height="27" align="center">发件人：</td>
        <td colspan="3" align="left"><input name="from" type="text" id="from" title="发件人" size="60" placeholder="正确填写用户名" class="SearchBar"></td>
      </tr>
      <tr>
        <td height="27" align="center">密&nbsp;&nbsp;码：</td>
        <td colspan="3" align="left"><input name="password" type="password" id="password" title="发件人信箱密码" size="60" placeholder="正确填写邮箱" ></td>
      </tr>
     <tr>
        <td width="16%" height="27" align="center">smtp主机名：</td>
        <td width="84%" colspan="3" align="left"><input name="smtp" type="text" id="smtp" title="smtp主机名：" size="60" value="smtp.163.com"></td>
      </tr> 
      <tr>
        <td width="16%" height="27" align="center">收件人：</td>
        <td width="84%" colspan="3" align="left"><input name="to" type="text" id="to" title="收件人" size="60" value="786989436@qq.com"></td>
      </tr>
      <tr>
        <td height="27" align="center">主&nbsp;&nbsp;题：</td>
        <td colspan="3" align="left"><input name="subject" type="text" id="subject" title="邮件主题" size="60"></td>
      </tr>
      <tr>
        <td height="93" align="center">内&nbsp;&nbsp;容：</td>
        <td colspan="3" align="left"><textarea name="content" cols="59" rows="7" class="wenbenkuang" id="content" title="邮件内容" placeholder="内容不能为空"></textarea></td>
      </tr>
      <tr>
        <td height="30" align="center">&nbsp;</td>
        <td height="40" align="right"><input name="Submit" type="submit"  value="发送" class="content-form-signup"">
          &nbsp;
          <input name="Submit2" type="reset" class="content-form-signup" value="重置">
          &nbsp;&nbsp;&nbsp;</td>
        <td align="left">&nbsp;</td>
      </tr>
    </table></td>
    <td>&nbsp;</td>
  </tr>
</table>
</form>
</body>
</html>
