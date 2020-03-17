package cn.jlu.edu.Example;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class JDBCTools {
	Connection conn;
	Statement stmt;
	ResultSet rs;
	private String url="jdbc:mysql://localhost:3308/testdb";
	private void connect(){
		try{
		Class.forName("com.mysql.jdbc.Driver");
		conn=DriverManager.getConnection(url,"root","mysql");
		stmt=conn.createStatement();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	public void doUpdate(String sql){
		connect();
		try{
		stmt.executeUpdate(sql);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			close();
		}
	}
	public ArrayList<Map<String,String>> find(String sql){
		connect();
		ArrayList<Map<String,String>> rlist=new ArrayList<Map<String,String>>();
		try{
			rs=stmt.executeQuery(sql);
			
			ResultSetMetaData rsmd =rs.getMetaData();
			while(rs.next()){
				Map<String,String> map=new HashMap<String,String>();
				for(int i=1;i<=rsmd.getColumnCount();i++){
					map.put(rsmd.getColumnName(i), rs.getString(rsmd.getColumnName(i)));
				}
				rlist.add(map);
			}
			
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			close();
		}
		return rlist;
	}

	private void close(){
		try{
			if(conn!=null){
				conn.close();
			}
			if(stmt!=null){
				stmt.close();
			}
			if(rs!=null){
				rs.close();
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
