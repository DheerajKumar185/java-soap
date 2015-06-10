package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ResourceBundle;

public class DBConnection {
	public static Connection getDBConnection(){
		Connection con = null;
		ResourceBundle rb = ResourceBundle.getBundle("conn");
		try {
			//Class.forName("oracle.jdbc.driver.OracleDriver");
			Class.forName(rb.getString("driver")).newInstance();
 			con = DriverManager.getConnection(rb.getString("url"), rb.getString("username"), rb.getString("password"));
		//	con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "test",	"test");
			con.setAutoCommit(false);		
 		
			} catch (Exception e) {
 
			System.out.println("Connection Failed! Check output console");
			e.printStackTrace();
			}
 
		if (con != null) {
			System.out.println("Connection created");
		} else {
			System.out.println("Failed to make connection!");
		}
	
		return con;
	}
	
	public static void close(ResultSet rs, Statement stmt, Connection con) {

		try {
			rs.close();
		} catch (Exception e) { /* ignore */
		}

		try {
			stmt.close();
		} catch (Exception e) { /* ignore */
		}

		try {
			con.close();
		} catch (Exception e) { /* ignore */
		}

	}

}
