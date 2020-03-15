<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style type="text/css">
	input.first{
	width:200px;
	height:35px;
	border:1px solid gray;
	border-radius:5px 5px 5px 5px;
	margin:20px 0px 0px 20px;
	}
	.second{
	height:34px;
	width:68px;
	backgroud-color:blue;
	border:1px soild blue;
	border-radius:4px 4px 4px 4px; 
	margin:20px 0px 0px 90px;
	}
</style>

</head>
<body>
	<form action="doFind" method="post" enctype="application/x-www-form-urlencoded">
		<input class="first" type="text" name="findValue"></input><br />
		<input class="second" type="submit" value="查询">
	</form>
</body>
</html>