<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Update</title>

<link rel="stylesheet" type="text/css" href="styles.css">

</head>
<body>


	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String userName = request.getParameter("uname");
		String password = request.getParameter("pass");
	%>



<div class="form-container">
    <h2>Update Admin Information</h2>
    
    
    <form action="Update" method="post">
    
		 <label for="id">Admin ID:</label>
        <input type="text"  name="uid" value ="<%=id%>" readonly required>
        
        <label for="name">Name:</label>
        <input type="text"  name="name" value ="<%=name%>" required>
        
        <label for="uname">User Name:</label>
        <input type="text"  name="uname" value ="<%=userName%>" required>
        
        <label for="phone">Phone Number:</label>
        <input type="tel"  name="phone" value ="<%=phone%>" required>

        <label for="email">Email:</label>
        <input type="email" name="email" value ="<%=email%>" required>

        <label for="psw">Password:</label>
        <input type="password"  name="psw" value ="<%=password%>" required>


        <input type="submit" name="submit" value="Update My Data">
    </form>
    
</div>

</body>
</html>