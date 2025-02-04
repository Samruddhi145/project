<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.me.start.loadUsers, java.util.List,java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User List</title>
</head>
<body>
    <h1>User List</h1>
    <%
    //used to write java code
        // Assuming loadUsers has a method called getAllUsers() returning a list of users
        loadUsers userLoader = new loadUsers();
        List<String> users= userLoader.getAllUsers();

        if (users != null && !users.isEmpty()) {
    %>
    <ul>
        <% for (String user : users) { %>
            <li><%= user %></li>
        <% } %>
    </ul>
    <% } else { %>
    <p>No users found.</p>
    <% } %>
    
    <%
    ResultSet rs = userLoader.getAllUsersList();
    %>
    
    <table border=1>
	    <thead>
		    <tr>
			    <th>User </th>
			    <th>Email </th>
			    <th>pass </th>
			    <tr>
			</thead>  
			<tbody>  
	   
    <%
    while(rs.next()){
    %>
    <tr>
		<td><%= rs.getString("user") %></td>
		<td><%= rs.getString("email") %></td>
		<td><%= rs.getString("pass") %></td>
	</tr>
    <%} %>
       </tbody>
    </table>
</body>
</html>
