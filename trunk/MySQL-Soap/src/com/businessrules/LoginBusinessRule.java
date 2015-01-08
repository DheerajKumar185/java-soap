package com.businessrules;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.util.DBConnection;

public class LoginBusinessRule {
	
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	public String validateCrednetials(String login, String password)

	{
		String result = "Failed";
		conn = DBConnection.getDBConnection();
		//Query to check whether user exist or not
				
		String isUserExist = "SELECT * from detail.detail where USERNAME =  '" + login + "' and PASSWORD = '" + password + "' ";
	
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(isUserExist);
			if(rs.next()==true)
			{
				result = rs.getString("userid");
				return result;
			}
			else
			{
				return result;
			}
				
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return result; // return 100 for SQLException
		}finally{
			DBConnection.close(rs,stmt,conn);
		}
	}
}