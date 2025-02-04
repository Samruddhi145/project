package com.me.start;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/regform")
public class Registerup extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public void service(HttpServletRequest req,HttpServletResponse resp)throws IOException{
		PrintWriter out=resp.getWriter();
		String user = req.getParameter("name1");
		String email=req.getParameter("email1");
		String pass=req.getParameter("pass1");
		String gender=req.getParameter("gender1");
		String city=req.getParameter("city1");
		
		
		
		
		 final String DB_URL="jdbc:mysql://localhost:3306/Register?useSSL=false";
	     final String USER="root";
	     final String PASS="root";
		
		Connection con1=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con1 = DriverManager.getConnection(DB_URL,USER,PASS);
			PreparedStatement ps = con1.prepareStatement("Insert into client values(?,?,?,?,?)");
			ps.setString(1, user);
			ps.setString(2, email);
			ps.setString(3, pass);
			ps.setString(4, gender);
			ps.setString(5, city);
			int i=ps.executeUpdate();
			RequestDispatcher rd=req.getRequestDispatcher("/Resisterme.jsp");
			if(i>0) {
				req.setAttribute("status","Success");
				resp.setContentType("text/html");
				out.print("<h3 style=color:Green;> User Register Successfully</h3>");
				
		    	rd.include(req, resp);
			}else {
				req.setAttribute("status","failed");
				resp.setContentType("text/html");
		    	out.print("<h3 style=color:red>User not Register due to some error,Try again<h3>");
		    	 rd=req.getRequestDispatcher("/Resisterme.jsp");
		    	rd.include(req, resp);
			}
			
} catch (Exception e) {

	e.printStackTrace();
}


}


}
