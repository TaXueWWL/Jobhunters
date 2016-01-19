package com.bwm.db;

import java.sql.*;

/**
 *class explain:设置返回值检测sql语句提交结果
 *对数据库进行具体操作
 */
public class Data {

    private Conn con = new Conn();
    private Statement stmt;
    private ResultSet rs;

    /**
     *input parameter:  DataBase table name
     *output parameter: count = -2 ;Exception
     *ount = -1 ;Error
     *count = 0  ;Nothing
     *count > 0  ;Right
     */
    /**
     * 获取查询行数
     * @param strSql
     * @return
     */
    @SuppressWarnings("finally")
	public int getRowCount(String strSql) {
        int intCount = 0;
        try {
            stmt = con.getStmtread();
            rs = stmt.executeQuery("SELECT COUNT(*) FROM " + strSql);
            if (rs.next()) {
                intCount = rs.getInt(1);
            } else {
                intCount = -1;
            }
        } catch (Exception e) {
            intCount = -2;
            System.err.println(e.getMessage());
            e.printStackTrace();
        } finally {
            con.close();
            return intCount;
        }
    }

    /**
     *input parameter:	插入数据
     *output parameter:	count = -2 >Exception
     *count = 0  >nothing
     *count > 1  >right
     */
    @SuppressWarnings("finally")
	public int insert(String sql) {
        int count = 0;
        stmt = con.getStmt();
        try {
            count = stmt.executeUpdate(sql);
        } catch (Exception e) {
            count = -2;
            System.err.println(e.getMessage());
            e.printStackTrace();
        } finally {
            con.close();
            return count;
        }
    }

    /**
     *input parameter:	更新数据
     *output parameter:	count = -2 >Exception
     *count = 0  >nothing
     *count > 1  >right
     */
    @SuppressWarnings("finally")
	public int update(String sql) {
        int count = 0;
        stmt = con.getStmt();
        try {
            count = stmt.executeUpdate(sql);
        } catch (Exception e) {
            count = -2;
            System.err.println(e.getMessage());
            e.printStackTrace();
        } finally {
            con.close();
            return count;
        }
    }

    /**
     *input parameter:	删除数据
     *output parameter:	count = -2 >Exception
     *count = 0  >nothing
     *count > 1  >right
     */
    @SuppressWarnings("finally")
	public int delete(String sql) {
        int count = 0;
        stmt = con.getStmt();
        try {
            count = stmt.executeUpdate(sql);
        } catch (Exception e) {
            count = -2;
            System.err.println(e.getMessage());
            e.printStackTrace();
        } finally {
            con.close();
            return count;
        }
    }
}