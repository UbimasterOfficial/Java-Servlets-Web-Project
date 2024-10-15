package com.customer;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


public class UpdateAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String id = request.getParameter("uid");
		String name = request.getParameter("name");
		String username = request.getParameter("uname");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String password = request.getParameter("psw");
		
		boolean isTrue;
		
		isTrue = AdminDBUtil.updateAdmin(id, name, username, phone, email, password);
		
		if(isTrue== true) {
			
			request.setAttribute("message", "Account updated successfully!!");
			List<Admin> adminDetails = AdminDBUtil.getAdminDetails(id);
			request.setAttribute("cusDetails", adminDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}else {
			
			request.setAttribute("message", "Account update failed!!");
			List<Admin> adminDetails = AdminDBUtil.getAdminDetails(id);
			request.setAttribute("cusDetails", adminDetails);
			
			RequestDispatcher dis2 = request.getRequestDispatcher("useraccount.jsp");
			dis2.forward(request, response);
		}
		
		
	}

}
