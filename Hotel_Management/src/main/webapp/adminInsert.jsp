<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Insert</title>

<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>

<div class="form-container">
    <h2>Admin Register Form</h2>
    
    
    <form action="AdminInsert" method="post">
    

        <label for="name">Name:</label>
        <input type="text"  name="name" required>
        
        <label for="uname">User Name:</label>
        <input type="text"  name="uid" required>
        
        <label for="phone">Phone Number:</label>
        <input type="tel"  name="phone" required>

        <label for="email">Email:</label>
        <input type="email" name="email" required>

        <label for="password">Password:</label>
        <input type="password"  name="psw" required>


        <input type="submit" name="submit" value="Create Admin">
    </form>
    
    <p style="font-size: 15px;">
    Have an account?
    <a href="login.jsp" >Log in</a>
	</p>
    
</div>


<% 
        String message = (String) request.getAttribute("message");
        if (message != null) {
    %>
        <script>
            alert('<%= message %>');
        </script>
    <% 
        }
    %>

</body>
</html>