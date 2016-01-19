package com.bwm.verify;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;

import com.bwm.bean.Student;
import com.bwm.db.ConnectDB;
import com.mysql.jdbc.Connection;




/**
 * Servlet implementation class VerfyStudentServlet
 */
@WebServlet("/VerifyStudentServlet")
public class VerifyStudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public VerifyStudentServlet() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		// 设置响应的文本类型为HTML，字符编码为UTF-8
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();


		String username = request.getParameter("username");
		String stuPassword = request.getParameter("stuPassword");
		
		HttpSession session = request.getSession();
		session.setAttribute("studentname", username);
		
		java.sql.ResultSet rs = null;
		Connection connection = (Connection) new ConnectDB().getCon();

		System.out.print("数据库连接成功");
		
		Statement statement;
		try {
			statement = (Statement) connection.createStatement();
			rs = statement.executeQuery("select * from tb_student");
			
			String usernameDB = null;
			String passwordDB = null;
			
			while (rs.next()) {
				System.out.println();
				usernameDB = rs.getString("name");
				passwordDB = rs.getString("password");
				
				
				System.out.println(usernameDB);
				System.out.println(passwordDB);
			
			} 	
			if (username.equals(usernameDB) && stuPassword.equals(passwordDB)) {
				System.out.println("用户名正确");
				//out.print("用户名正确");
				System.out.println("密码正确");
				//out.print("密码正确");
				//out.println("验证结束");
				out.println("<!DOCTYPE html>");
				out.println("<html>");
				out.println("<head><title>学生登录成功</title></head>");
				out.println("<body>");
				out.println("<script src='js/studentJumpToPage.js' type='text/javascript' charset='utf-8'>");
				out.println("</script>");
				out.println("</body>");
				out.println("</html>");
			} else {
				out.println("<!DOCTYPE html>");
				out.println("<html>");
				out.println("<head><title>登录失败</title></head>");
				out.println("<body>");
				out.println("<script src='js/studentJumpToIndex.js' type='text/javascript' charset='utf-8'>");
				out.println("</script>");
				out.println("</body>");
				out.println("</html>");
			} 
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
}
