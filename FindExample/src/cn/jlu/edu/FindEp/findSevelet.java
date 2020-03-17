package cn.jlu.edu.FindEp;

//import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Map;

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
		JDBCTools jdbc=new JDBCTools();
		
		request.setCharacterEncoding("utf-8");
		String find=request.getParameter("findValue");
		System.out.println("接收到的信息："+find);
		//String findAll=request.getParameter("findAll");
		if(find.equals("查询")){
		String sql="select * from stu";
		ArrayList<Map<String,String>> rs=jdbc.find(sql);
		request.setAttribute("rs", rs);
		request.getRequestDispatcher("show.jsp").forward(request, response);
		}
		
	}catch(Exception e){
		e.printStackTrace();
}
}
}
