package com.me.start;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class loadUsers {
	final String DB_URL="jdbc:mysql://localhost:3306/Register?useSSL=false";
    final String USER="root";
    final String PASS="root";
    
    // this is test commit
    
    // this is second commit
    public Connection getCon() {
    	 Connection con1=null;
    	 try {
			Class.forName("com.mysql.cj.jdbc.Driver");
    	con1 = DriverManager.getConnection(DB_URL,USER,PASS);
    	 return con1;
    	 } catch (Exception e) {
 			// TODO Auto-generated catch block
 			e.printStackTrace();
 		}
    	 return con1;
    }
    
    public List<String> getAllUsers(){
    	Connection con=getCon();
    	List<String> list = new ArrayList();
    	try {
    	PreparedStatement ps = con.prepareStatement("select * from client");
    	ResultSet rs= ps.executeQuery();
    	while(rs.next()) {
    		list.add(rs.getString("user"));
    	}
    	}catch(Exception e) {
    		e.printStackTrace();
    	}
    	return list;
    }
    
    public ResultSet getAllUsersList(){
    	Connection con=getCon();
    	ResultSet rs;
    	try {
    	PreparedStatement ps = con.prepareStatement("select * from client");
    	rs= ps.executeQuery();
    	
    	}catch(Exception e) {
    		e.printStackTrace();
    		rs=null;
    	}
    	return rs;
    }
}
