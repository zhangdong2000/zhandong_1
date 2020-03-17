<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
	<%
	Object obj=request.getParameter("rs");
	ArrayList<Map<String,String>> rslist=null;
	if(obj!=null){
		rslist=(ArrayList)obj;
	}
	//ResultSetMetaData rsmd=rs.getMetaData();
	//int columnCount=rsmd.getColumnCount();

/* 	while(rs.next()){
	for(int i=0;i<columnCount;i++){
		String code=rs.getString(rsmd.getColumnName(i));
		String name=rs.getString(rsmd.getColumnName(i));
		String age=rs.getString(rsmd.getColumnName(i));
		String sex=rs.getString(rsmd.getColumnName(i)); */

%>



</head>
<body>
	<div style="background:yellow; width:200px; height:50px;">
		这是一个普通的div标签
	</div>
	<div>
	<%for(Map<String,String> map : rslist){
	%>
	
	<table>
		<tr>
			<th>编号</th>
			<th>姓名</th>
			<th>年龄</th>
			<th>性别</th>
		</tr>
		<tr>
			<td><%=map.get("code") %></td>
			<td><%=map.get("name") %></td>
			<td><%=map.get("age") %></td>
			<td><%=map.get("sex") %></td>
		</tr>
	</table>
	<%
	}
	%>
	</div>
</body>
</html>