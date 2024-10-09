<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Insert</title>

<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }
        .form-container {
            width: 400px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .form-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .form-container label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        .form-container input {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .form-container input[type="submit"] {
            background-color: #28a745;
            color: white;
            border: none;
            cursor: pointer;
        }
        .form-container input[type="submit"]:hover {
            background-color: #218838;
        }
    </style>


</head>
<body>

<div class="form-container">
    <h2>Admin Register Form</h2>
    
    
    <form action="AdminInsert" method="post">
    

        <label for="name">Name:</label>
        <input type="text"  name="name" required>

        <label for="email">Email:</label>
        <input type="email" name="email" required>
        
        <label for="phone">Phone Number:</label>
        <input type="tel"  name="phone" required>

        <label for="uname">User Name:</label>
        <input type="text"  name="uid" required>

        <label for="password">Password:</label>
        <input type="password"  name="psw" required>


        <input type="submit" name="submit" value="Create Admin">
    </form>
    
</div>

</body>
</html>