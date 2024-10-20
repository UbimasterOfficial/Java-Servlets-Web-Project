package com.customer;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;


public class DeleteAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("uid");
		
		boolean isTrue;
		
		isTrue = AdminDBUtil.deleteAdmin(id);
		
		if(isTrue == true) {

			// Set success message
            request.setAttribute("message", "Deletion Successful!!");
            RequestDispatcher dis = request.getRequestDispatcher("adminInsert.jsp");
            dis.forward(request, response);
			
			
		}else {
			
			// Set failure message
            request.setAttribute("message", "Deletion FailedS!!");
            List<Admin> adminDetails = AdminDBUtil.getAdminDetails(id);
            request.setAttribute("cusDetails", adminDetails);
            
            RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
            dis.forward(request, response);
		}
		
		
		
	}

}
