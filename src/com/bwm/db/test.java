package com.bwm.db;

import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

public class test {

	public static void main(String[] args) {
		java.sql.ResultSet rs = null;
		Connection connection = (Connection) new ConnectDB().getCon();

		System.out.print("数据库连接成功");
		
		Statement statement;
		try {
			statement = (Statement) connection.createStatement();
			rs = statement.executeQuery("select * from tb_admin");
			
			
			while (rs.next()) {
				System.out.println();
				String usernameDB = rs.getString("name");
				String passwordDB = rs.getString("password");
				System.out.println(usernameDB);
				System.out.println(passwordDB);
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
