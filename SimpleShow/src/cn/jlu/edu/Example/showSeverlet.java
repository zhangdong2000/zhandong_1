package cn.jlu.edu.Example;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class showSeverlet extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request,HttpServletResponse response){
		doPost(request,response);
	}
	protected void doPost(HttpServletRequest request,HttpServletResponse response){
		JDBCTools tools=new JDBCTools();
		String sql="select * from stu";
		ArrayList<Map<String,String>> rslist=tools.find(sql);
		System.out.println("成功执行了数据库查询，并返回了数据值");
		request.setAttribute("returnList", rslist);
		try{
		request.getRequestDispatcher("show.jsp").forward(request, response);
		System.out.println("成功执行了请求转发！！！");
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}
}
