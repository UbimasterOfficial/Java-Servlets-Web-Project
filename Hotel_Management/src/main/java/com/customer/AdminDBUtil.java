package com.customer;

import java.util.List;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class AdminDBUtil {
	
	public static List<Admin> validate (String userName, String password){
		
		ArrayList<Admin> cus = new ArrayList<>();
		
		//Database connection
		
		String url = "jdbc:mysql://localhost:3306/hotel";
		String user = "root";
		String pass ="password";
		
		//Admin pass validation
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url,user,pass);			
			Statement stmt = con.createStatement();
			
			String sql = "select * from admin where username = '"+userName+"' and password = '"+password+"'";
			
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String userU = rs.getString(5);
				String passU = rs.getString(6);
				
				Admin c = new Admin(id, name, email, phone, userU, passU);
				cus.add(c);
				
			}
			
			
			
		}catch(Exception e1) {
			System.err.println(e1);
		}
		
		
		
		
		return cus;
		
		
	}
	
	
	
	
	

	public static void main(String[] args) {
		

	}

}
