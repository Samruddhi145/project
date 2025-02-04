<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

form {
    background-color: #fff;
    padding: 20px 30px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    width: 100%;
    max-width: 400px;
    box-sizing: border-box;
}

form input[type="text"],
form input[type="email"],
form input[type="password"],
form select {
    width: 100%;
    padding: 10px;
    margin: 10px 0 20px 0;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

form input[type="radio"] {
    margin-right: 5px;
}

form input[type="submit"] {
    background-color: #4CAF50;
    color: white;
    border: none;
    padding: 12px 20px;
    border-radius: 4px;
    cursor: pointer;
    width: 100%;
    box-sizing: border-box;
    font-size: 16px;
}

form input[type="submit"]:hover {
    background-color: #45a049;
}

h3 {
    text-align: center;
    margin: 20px 0;
    color: #333;
}

a {
    color: #007BFF;
    text-decoration: none;
    display: block;
    text-align: center;
    margin-top: 10px;
}

a:hover {
    text-decoration: underline;
}
</style>
</head>
<body>

<input type="hidden" id="status" value="<%=request.getAttribute("status") %>">
<h3>SIGN UP PAGE!</h3>
<form action="regform" method="post">

Name:<input type="text" name="name1" >
Email:<input type="email" name="email1" >

Password:<input type="password" name="pass1" >
Gender:<input type="radio" name="gender1" value="male" >Male<input type="radio" name="gender1" value="female" >Female

City:<select>
             <option>
             Select city</option>
              <option>Pune</option>
               <option>Mumbai</option>
                <option>nashik</option>
                 <option>Delhi</option>

 


</select>

<input type="submit" name="Register" >
<h3>OR</h3><br><br>
<a href="loginme.jsp">Now login! </a>

</form>
<script type="text/javascript">
var status=document.getElementbyid("status").value;
if(status=="success"){
	swell("Congrats,Register Successfully!")
}

</script>
</body>
</html>