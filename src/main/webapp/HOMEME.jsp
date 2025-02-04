<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
if(session.getAttribute("name")==null){
response.sendRedirect("/loginme.jsp");
      }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  /* General Styles */
  body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f9;
    color: #333;
    margin: 0;
    padding: 20px;
    text-align: center;
  }

  h1 {
    color: #4CAF50;
    font-size: 2.5rem;
    margin-bottom: 20px;
  }

  a {
    display: inline-block;
    margin: 10px 0;
    padding: 10px 20px;
    font-size: 1rem;
    text-decoration: none;
    color: white;
    background-color: #007BFF;
    border-radius: 5px;
    transition: background-color 0.3s ease;
  }

  a:hover {
    background-color: #0056b3;
  }

  input[type="search"] {
    width: 300px;
    padding: 10px;
    font-size: 1rem;
    border: 1px solid #ccc;
    border-radius: 5px;
    margin-top: 10px;
    transition: border-color 0.3s ease;
  }

  input[type="search"]:focus {
    border-color: #4CAF50;
    outline: none;
  }

</style>
</head>
<body>
<%

String hi=(String)session.getAttribute("name");

%>
<h3>
    Hello: <%=hi %></h3>
<marquee><h1>Welcome home</h1></marquee>
 <a href="logout.jsp"><button style=color:blue>Go To Login!</button></a>   
    
<form action=" home" method="POST">
   
     <input type="text" name="search1" placeholder="Search" /><br><br>
    <input type="submit" value="click me!" />
   
    
</form>

</body>
</html>