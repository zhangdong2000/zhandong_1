package cn.jlu.edu.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ajavServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public ajavServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String province = request.getParameter("province456");
		Date time = new Date();
		SimpleDateFormat df = new SimpleDateFormat("YYYY-MM-dd hh:mm:ss");
		String ftime = df.format(time);
		System.out.println("传递到servlet中的省份是："+province+"\t"+ftime);
		String citys = "";
		if(province.equals("辽宁")){
			citys = "沈阳-大连-锦州-盘锦-鞍山";
		}else if(province.equals("河北")){
			citys="石家庄-邯郸-秦皇岛-唐山-廊坊";
		}else if(province.equals("黑龙江")){
			citys="哈尔滨-佳木斯-齐齐哈尔";
		}else if(province.equals("吉林")){
			citys="长春-吉林-通化-四平-公主岭";
		}
		//设置响应头部
		response.setHeader("Content-Type","text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		//String sql="这里是要返回去的内容";
		System.out.println(citys);
		out.print(citys);	
		out.flush();
		out.close();
	}

}
