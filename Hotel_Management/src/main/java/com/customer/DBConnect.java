package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	
	private static String url = "jdbc:mysql://localhost:3306/hotel";
	private static String userName= "root";
	private static String password= "password";
	private static Connection con;
	
	
	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,userName,password);
			
		}catch(Exception e1) {
			System.err.println("Data base connection not success!! "+ e1.getStackTrace());
		}
		
		return con;
	}

}
