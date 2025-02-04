package com.me.start;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/GoodMorning")
public class loginin extends HttpServlet{

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public void service(HttpServletRequest req,HttpServletResponse resp)throws ServletException,IOException {
		final String DB_URL="jdbc:mysql://localhost:3306/Register?useSSL=false";
	    final String USER="root";
	    final String PASS="root";
		
			String pass=req.getParameter("pass");
			String email=req.getParameter("email");
			HttpSession session=req.getSession();
			RequestDispatcher rd=null;
			Connection con1;
			try {
				 PrintWriter out=resp.getWriter();
				 
				 Class.forName("com.mysql.cj.jdbc.Driver");
					con1 = DriverManager.getConnection(DB_URL,USER,PASS);
					PreparedStatement ps = con1.prepareStatement("select * from client where pass=? and email=?");
					ps.setString(1, pass);
					ps.setString(2, email);
					ResultSet rs= ps.executeQuery();
				    if(rs.next()) {
					session.setAttribute("name",rs.getString("user"));
				   
				    	 rd=req.getRequestDispatcher("/HOMEME.jsp");
				    	 rd.forward(req, resp);
				    }else {
				    	req.setAttribute("status", "failed");
				    	resp.setContentType("text/html");
				    	out.print("<h3 style=color:red>Password and email id did'nt match,Try again<h3>");
				    	 rd=req.getRequestDispatcher("/loginme.jsp");
				    	 rd.forward(req, resp);
				    	
			}
				    
		   
		    }catch(Exception e) {
		    	e.printStackTrace();
		    }
			
	    
		}

	}




