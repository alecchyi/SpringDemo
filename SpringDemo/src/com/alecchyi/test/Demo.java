package com.alecchyi.test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


//public class DBHelper {  
//    public static final String url = "jdbc:mysql://127.0.0.1/student";  
//    public static final String name = "com.mysql.jdbc.Driver";  
//    public static final String user = "root";  
//    public static final String password = "root";  
//  
//    public Connection conn = null;  
//    public PreparedStatement pst = null;  
//  
//    public DBHelper(String sql) {  
//        try {  
//            Class.forName(name);//指定连接类型  
//            conn = DriverManager.getConnection(url, user, password);//获取连接  
//            pst = conn.prepareStatement(sql);//准备执行语句  
//        } catch (Exception e) {  
//            e.printStackTrace();  
//        }  
//    }  
//  
//    public void close() {  
//        try {  
//            this.conn.close();  
//            this.pst.close();  
//        } catch (SQLException e) {  
//            e.printStackTrace();  
//        }  
//    }  
//}
public class Demo {

	public static final String url = "jdbc:mysql://192.168.117.128:3006/demo";  
    public static final String name = "com.mysql.jdbc.Driver";  
    public static final String user = "root";  
    public static final String password = "root";  
  
    public Connection conn = null;  
    public PreparedStatement pst = null;
    
    public void test(){
    	try {  
            Class.forName(name);//指定连接类型  
            conn = (Connection) DriverManager.getConnection(url, user, password);//获取连接  
            pst = (PreparedStatement) conn.prepareStatement("select * from users");//准备执行语句  
            
            ResultSet ret = null;
            
            ret = pst.executeQuery();//执行语句，得到结果集  
            while (ret.next()) {  
                String uid = ret.getString(1);   
                System.out.println(uid + "\t");  
            }//显示数据  
            ret.close();  
            conn.close();//关闭连接
            pst.close();
        } catch (Exception e) {  
            e.printStackTrace();  
        } 
    }
    
    public void test1() throws ClassNotFoundException, Exception{
    	Class.forName("com.ibm.db2.jcc.DB2Driver");  
        Connection conn = (Connection) DriverManager.getConnection("jdbc:db2://localhost:50000/DRESS:currentSchema=ruby;", "db2admin", "alec03071112");  
//        String xx = new String("ruby");
//        conn.setSchema(xx);
        ResultSet rs = conn.createStatement().executeQuery("select count(*) from ruby.users");  
        rs.next();  
        int count = rs.getInt(1);
        System.out.println(count);  
        rs.close();  
        conn.close();
    	
    }
    
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Demo d = new Demo();
		try {
			d.test1();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
