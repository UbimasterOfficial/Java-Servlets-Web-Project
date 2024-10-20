package com.customer;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


public class AdminInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String username = request.getParameter("uid");
		String password = request.getParameter("psw");
		
		boolean isTrue;
		
		isTrue = AdminDBUtil.insertAdmin(name, email, phone, username, password);
		
		if(isTrue == true) {
			
			// Pass a success message to JSP
            request.setAttribute("message", "Register Successful!!");
            RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
            dis.forward(request, response);
            
		}else {
			// Pass a failure message to JSP
            request.setAttribute("message", "Register Unsuccessful!!S");
            RequestDispatcher dis2 = request.getRequestDispatcher("adminInsert.jsp");
            dis2.forward(request, response);
		}
		
	}

}
