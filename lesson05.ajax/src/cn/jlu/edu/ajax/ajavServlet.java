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
		System.out.println("���ݵ�servlet�е�ʡ���ǣ�"+province+"\t"+ftime);
		String citys = "";
		if(province.equals("����")){
			citys = "����-����-����-�̽�-��ɽ";
		}else if(province.equals("�ӱ�")){
			citys="ʯ��ׯ-����-�ػʵ�-��ɽ-�ȷ�";
		}else if(province.equals("������")){
			citys="������-��ľ˹-�������";
		}else if(province.equals("����")){
			citys="����-����-ͨ��-��ƽ-������";
		}
		//������Ӧͷ��
		response.setHeader("Content-Type","text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		//String sql="������Ҫ����ȥ������";
		System.out.println(citys);
		out.print(citys);	
		out.flush();
		out.close();
	}

}
