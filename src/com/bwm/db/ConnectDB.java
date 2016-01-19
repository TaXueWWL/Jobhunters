package com.bwm.db;
import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectDB {
	public Connection getCon() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost/jobhunterandcompany?useUnicode=true&characterEncoding=utf-8";
			String user = "snowalker";
			String password = "admin";
			Connection conn = DriverManager.getConnection(url, user, password);
			System.out.println("connnection success");
			System.out.println(conn.getMetaData().getURL());
			
			return conn;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
