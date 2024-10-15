 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hotel Management</title>

<link rel="stylesheet" type="text/css" href="styles.css">

</head>
<body>


<div class="form-container">

    <h2>Hotel Admin Login</h2>
    
    <form action="login" method="post">


        <label for="name">User Name:</label>
        <input type="text" name="uid" required>

        <label for="phone">Password:</label>
        <input type="password" name="pass" required>


        <input type= "submit" name="submit" value="login">
        
    </form>
    
    <p style="font-size: 15px;">
    Don't have an account?
    <a href="adminInsert.jsp" >Register here</a>
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