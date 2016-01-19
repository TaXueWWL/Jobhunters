package com.bwm.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.bwm.bean.adminTable;
import com.bwm.db.Conn;

public class adminservice {
	
	private Connection connection;
	private PreparedStatement pstmt;
	private String sql = "select * from tb_admin where name=? and password=?";
	public adminservice() throws Exception {
		connection = new Conn().getCon();
	}  
	
	//验证管理员用户是否合法
	public boolean validateAdmin(adminTable admin) {
		try {
			pstmt = connection.prepareStatement(sql);
			pstmt.setString(1, admin.getAdminname());
			pstmt.setString(2, admin.getPassword());
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				return true;
			} else {
				return false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}
}
