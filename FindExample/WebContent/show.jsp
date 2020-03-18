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
	Object obj=request.getAttribute("rslist");
	ArrayList<Map<String,String>> rslist=null;
	if(obj!=null){
		rslist=(ArrayList)obj;
	}
	int count=0;
	//ResultSetMetaData rsmd=rs.getMetaData();
	//int columnCount=rsmd.getColumnCount();

/* 	while(rs.next()){
	for(int i=0;i<columnCount;i++){
		String code=rs.getString(rsmd.getColumnName(i));
		String name=rs.getString(rsmd.getColumnName(i));
		String age=rs.getString(rsmd.getColumnName(i));
		String sex=rs.getString(rsmd.getColumnName(i)); */

%>
<style>
th{
background:yellow;
width:150px;
height:35px;
}
td.first{
background:blue; 
width:150px;
height:35px; 
text-align:center;

}
td.second{
background:green; 
width:150px; 
height:35px; 
text-align:center;
}
</style>
</head>
<body>
<table>
		<tr>
			<th>编号</th>
			<th>姓名</th>
			<th>年龄</th>
			<th>性别</th>
		</tr>
	
		<%for(Map<String,String> rsmap : rslist){ 
		count++;%>
		<%if(count%2==0){%>
		<tr>
		
			<td class="first"><%=rsmap.get("code") %></td>
			<td class="first"><%=rsmap.get("name") %></td>
			<td class="first"><%=rsmap.get("age") %></td>
			<td class="first"><%=rsmap.get("sex") %></td>
		</tr>
		<%}else{ %>
		<tr>
			<td class="second"><%=rsmap.get("code") %></td>
			<td class="second"><%=rsmap.get("name") %></td>
			<td class="second"><%=rsmap.get("age") %></td>
			<td class="second"><%=rsmap.get("sex") %></td>
		</tr>
		<%} %>
		<%} %>
</table>
</body>
</html>