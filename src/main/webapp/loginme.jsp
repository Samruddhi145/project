<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
  }

  form {
    background-color: #ffffff;
    padding: 20px 40px;
    border-radius: 10px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    width: 300px;
    text-align: center;
  }

  input[type="password"],
  input[type="email"] {
    width: 100%;
    padding: 10px;
    margin: 10px 0;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 14px;
  }

  input[type="submit"] {
    width: 100%;
    padding: 10px;
    background-color: #4CAF50;
    color: white;
    border: none;
    border-radius: 5px;
    font-size: 16px;
    cursor: pointer;
  }

  input[type="submit"]:hover {
    background-color: #45a049;
  }

  input::placeholder {
    color: #aaa;
  }
</style>
</head>
<body>
<input type="hidden" id="status" value="<%=request.getAttribute("status") %>">
<h3>LOGIN PAGE!</h3>
<form action="GoodMorning" method="post">

<input type="password" name="pass" placeholder="Enter password"/><br><br>
<input type="email" name="email" placeholder="Enter EmailID"/><br><br>
<input type="submit" value="login" />
<h3>OR</h3><br><br>
<a href="Registerme.jsp">Register me </a>

</form><br><br>
<script type="text/javascript">
var status=document.getElementbyid("status").value;
if(status=="failed"){
	swell("Sorry,wrong email and password!")
}

</script>
</body>
</html>