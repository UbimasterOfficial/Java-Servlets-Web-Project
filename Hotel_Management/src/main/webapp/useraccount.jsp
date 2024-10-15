<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Details</title>

<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 80%;
            margin: 20px auto;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        .card {
            background-color: #fff;
            padding: 20px;
            margin: 20px 0;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: 0.3s ease;
        }

        .card:hover {
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        .card-header {
            font-size: 24px;
            font-weight: bold;
            color: #007bff;
        }

        .card-body {
            margin-top: 10px;
            color: #555;
            padding-bottom: 40px;
        }

        .card-body div {
            margin: 8px 0;
        }

        .card-body label {
            font-weight: bold;
            display: inline-block;
            width: 120px;
        }
        
        /* update Button styling */
        .update-button {
            position: absolute;
            bottom: 100px;
            right: 150px;
            background-color: #28a745;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
        }

        .update-button:hover {
            background-color: #218838;
        }
        
        /* delete Button styling */
        .delete-button {
            position: absolute;
            bottom: 100px;
            right: 20px;
            background-color: #ba181b;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
        }

        .delete-button:hover {
            background-color: #a4161a;
        }
        

        /* Responsive design for smaller screens */
        @media (max-width: 768px) {
            .container {
                width: 95%;
            }

            .card-body label {
                width: 100px;
            }
        }
    </style>

</head>
<body>
<div class="container">
        <h1>Admin Profile</h1>

        <c:forEach var="cus" items="${cusDetails}">
        
        <c:set var="id" value=" ${cus.id}"/>
        <c:set var="name" value="${cus.name}"/>
        <c:set var="email" value="${cus.email}"/>
        <c:set var="phone" value="${cus.phone}"/>
        <c:set var="username" value="${cus.userName}"/>
        <c:set var="password" value="${cus.password}"/>
        
            <div class="card">
                <div class="card-header">
                    ${cus.userName}
                </div>
                <div class="card-body">
                    <div>
                        <label>Admin ID:</label> ${cus.id}
                    </div>
                     <div>
                        <label>Name:</label> ${cus.name}
                    </div>
                    <div>
                        <label>Phone:</label> ${cus.phone}
                    </div>
                    <div>
                        <label>Email:</label> ${cus.email}
                    </div>                  
                    <div>
                        <label>Password:</label> ***********
                    </div>
                    	                 
                </div>
            </div>
                                 
        </c:forEach>
        
        
        
        <c:url value = "updateAdmin.jsp" var="adminupdate">
        
        	<c:param name="id" value = "${id}"/>
        	<c:param name="name" value = "${name}"/>
        	<c:param name="email" value = "${email}"/>
        	<c:param name="phone" value = "${phone}"/>
        	<c:param name="uname" value = "${username}"/>
        	<c:param name="pass" value = "${password}"/>
        
         </c:url>
        
           <a href="${adminupdate}">
           <input type="button" name="update" value="Update Profile" class="update-button"> 
           </a>
           
           
           
           <c:url value = "deleteAdmin.jsp" var="admindelete">
        
        	<c:param name="id" value = "${id}"/>
        	<c:param name="name" value = "${name}"/>
        	<c:param name="email" value = "${email}"/>
        	<c:param name="phone" value = "${phone}"/>
        	<c:param name="uname" value = "${username}"/>
        	<c:param name="pass" value = "${password}"/>
        
         </c:url>
                    
           <a href="${admindelete}">
           <input type="button" name="delete" value="Delete Profile" class="delete-button"> 
           </a>
                     

    </div>

</body>
</html>