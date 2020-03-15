package cn.jlu.edu.FindEp;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class findSevelet extends HttpServlet{
protected void doGet(HttpServletRequest request,HttpServletResponse response){
	try{
		doPost(request,response);
	}catch(Exception e){
		e.printStackTrace();
	}
}
protected void doPost(HttpServletRequest request,HttpServletResponse response){
	try{
		request.setCharacterEncoding("utf-8");
		String findName=(String)(request.getAttribute("findValue"));
		System.out.println("获取到的信息："+findName);
	}catch(Exception e){
		e.printStackTrace();
}
}
}
