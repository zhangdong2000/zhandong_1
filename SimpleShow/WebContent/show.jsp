<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style>
table{
	border-collapse:collapse;
}
td{
width:200px;
border:1px solid black;
text-align:center;
border-collapse:collapse;
background:yellow;
}
tr{
	backgorund:#aa15ef;
	border-collapse:collapse
}

</style>
<%
	Object obj=request.getAttribute("returnList");
	ArrayList<Map<String,String>> rslist=new ArrayList<Map<String,String>>();
	
	if(obj!=null){
		rslist=(ArrayList)obj;
	}
%>
</head>
<body>
	<form action="doFind" method="get" enctype="application/x-www-form-urlencoded">
		<input type="submit" value="查询"></input>
	
	</form>


	<table>
		<tr style="border:0">
			<th>编号</th>
			<th>姓名</th>
			<th>年龄</th>
			<th>性别</th>
		</tr>
		
		<%for(Map<String,String> map : rslist){ %>
		<tr>
			<td><%=map.get("code") %></td>
			<td><%=map.get("name") %></td>
			<td><%=map.get("sex") %></td>
			<td><%=map.get("age") %></td>
		</tr>
		<%} %>
	</table>
</body>
</html>