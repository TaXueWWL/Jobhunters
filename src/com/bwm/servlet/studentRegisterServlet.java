package com.bwm.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bwm.db.ConnectDB;
import com.mysql.jdbc.Connection;


/**
 * Servlet implementation class studentRegisterServlet
 */
@WebServlet("/studentRegisterServlet")
public class studentRegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public studentRegisterServlet() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 设置响应的文本类型为HTML，字符编码为UTF-8
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		// 获取参数
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String rePassword = request.getParameter("rePassword");
		PrintWriter out = response.getWriter();
		System.out.println(username);
		System.out.println(password);
		// 参数插入数据库，注册用户
		java.sql.ResultSet rs = null;
		Connection connection = (Connection) new ConnectDB().getCon();
		System.out.print("数据库连接成功");
		
		java.sql.PreparedStatement pstmt = null;
		//构造sql语句
		String sql = "insert into tb_student values(?,?,?,?,?,?,?,?,?,?)";
		//数据提交
		try {
			pstmt = connection.prepareStatement(sql);
			pstmt.setString(1, username);
			pstmt.setString(2, password);
			pstmt.setString(3, null);
			pstmt.setString(4, null);
			pstmt.setString(5, null);
			pstmt.setString(6, null);
			pstmt.setString(7, null);
			pstmt.setString(8, null);
			pstmt.setString(9, null);
			pstmt.setString(10, null);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head><title>注册成功</title></head>");
		out.println("<body>");
		out.println("<script src='js/registSuccessRdirect.js' type='text/javascript' charset='utf-8'>");
		out.println("</script>");
		out.println("</body>");
		out.println("</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
