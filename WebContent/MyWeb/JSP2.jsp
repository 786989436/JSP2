<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
  <%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table border="1px" width="400px" height="450">
	
<thead>
<tr>
<%Calendar day=Calendar.getInstance();
int year=day.get(Calendar.YEAR);
int month=day.get(Calendar.MONTH)+1;%>
	<th colspan="7"><%=year %>年<%=month %>月</th>
	</tr>

</thead>
<tbody>


	<tr>
		<td>日</td>
		<td>一</td>
		<td>二</td>
		<td>三</td>
		<td>四</td>
		<td>五</td>
		<td>六</td>
	</tr>
						<%
						Calendar thisMonth=Calendar.getInstance();
						int today=thisMonth.get(Calendar.DAY_OF_MONTH);
						int index=thisMonth.get(Calendar.DAY_OF_WEEK)-1;
						int maxIndex=thisMonth.getActualMaximum(Calendar.DAY_OF_MONTH);
						%>
						
						<%int j=0, i=0,grid=0,grid1=0,row=5;
						if(index==5&&maxIndex==31) row=6;
						else if(index==6&&maxIndex>29) row=6;
						else if(index==0&&maxIndex==28) row=4;
						for(j=0;j<row;j++){
						%><tr>
							<% for(i=0;i<7;i++){ 
								if(today-1==grid1){%>
								<td bgcolor="red">
									<%out.print(today);grid1++;%>
								</td>
								
								<%} 
								else{%>
									<td>
										<%if(grid<=index){
											out.print(" ");
											grid++;
										}
										else if(grid1<maxIndex){ grid1++;out.print(grid1);
										}%>
								
									</td>
								<%} %>
							<%} %>
						</tr>
						<%}%>

</tbody>
</table>
</body>
</html>