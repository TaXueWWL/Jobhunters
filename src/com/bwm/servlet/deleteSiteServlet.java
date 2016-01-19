package com.bwm.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bwm.db.ConnectDB;
import com.mysql.jdbc.Connection;

/**
 * Servlet implementation class deleteSiteServlet
 */
@WebServlet("/deleteSiteServlet")
public class deleteSiteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public deleteSiteServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@SuppressWarnings("null")
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		// 设置响应的文本类型为HTML，字符编码为UTF-8
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		//获取删除参数
		String sitename = request.getParameter("sitename");
		System.out.println(sitename);
		//进行数据删除事务
		Statement stmt = null;
		
		Connection connection = (Connection) new ConnectDB().getCon();

		try {
			stmt = connection.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.print("数据库连接成功");
		
		String sql = "delete from tb_flink where name='" + sitename.trim() + "'";
		
		try {
			stmt.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head><title>删除友请链接成功</title></head>");
		out.println("<body>");
		out.println("<script src='js/deleteFriendLinks.js' type='text/javascript' charset='utf-8'>");
		out.println("</script>");
		out.println("</body>");
		out.println("</html>");
	}
}

