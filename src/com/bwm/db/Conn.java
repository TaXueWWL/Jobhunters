package com.bwm.db;

import java.sql.*;

/**
 *class explain:数据库连接公共类
 */
public class Conn {
    private static Connection con;
    private Statement stmt;
    private ResultSet rs;
    private static final String drivername =
        "com.mysql.jdbc.Driver";
    private static final String url = "jdbc:mysql://localhost/jobhunterandcompany?useUnicode=true&characterEncoding=utf-8";
    private static final String user = "admin";
    private static final String password = "admin";
    /**
     *method explain:   Get Connection DataBase
     */
    public static synchronized Connection getCon() throws Exception {
        try {
            Class.forName(drivername);
            con = DriverManager.getConnection(url, user, password);
            System.out.println("Connected successfully");
            return con;
        } catch (SQLException e) {
            System.err.println(e.getMessage());
            throw e;
        }
    }

    /**
     *output parameter:	in order select in SQL
     */
    public Statement getStmtread() {
        try {
            con = getCon();
            stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,
                                       ResultSet.CONCUR_READ_ONLY);
            return stmt;
        } catch (Exception e) {
            System.err.println(e.getMessage());
            e.printStackTrace();
        }
        return null;
    }

    /**
     *output parameter: Data
     *input parameter:  SQL select sentence
     */
    public ResultSet getRs(String sql) {
        try {
            stmt = getStmtread();
            rs = stmt.executeQuery(sql);
            return rs;
        } catch (Exception e) {
            System.err.println(e.getMessage());
            e.printStackTrace();
        }
        return null;
    }

    /**
     *output parameter: not in order select in str SQL
     */
    public Statement getStmt() {
        try {
            con = getCon();
            stmt = con.createStatement();
            return stmt;
        } catch (Exception e) {
            System.err.println(e.getMessage());
            e.printStackTrace();
        }
        return null;
    }

    /**
     *method explain:   Close DataBase Connection
     */
    public synchronized void close() {
        try {
            if (rs != null) {
                rs.close();
                rs = null;
            }
        } catch (Exception e) {
            System.err.println(e.getMessage());
            e.printStackTrace();
        }
        try {
            if (stmt != null) {
                stmt.close();
                stmt = null;
            }
        } catch (Exception e) {
            System.err.println(e.getMessage());
            e.printStackTrace();
        }
        try {
            if (con != null) {
                con.close();
                con = null;
            }
        } catch (Exception e) {
            System.err.println(e.getMessage());
            e.printStackTrace();
        }
    }
}