<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>test1</title>

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
</div>



</body>
</html>