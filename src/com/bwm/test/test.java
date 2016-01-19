package com.bwm.test;

import com.bwm.db.Conn;

public class test {
	
	public static void main(String[] args) throws Exception {
		Conn conn = new Conn();
		System.out.println(conn.getCon().getClass());
	}
}
