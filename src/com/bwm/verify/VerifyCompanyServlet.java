package com.bwm.verify;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bwm.db.ConnectDB;


/**
 * Servlet implementation class VerifyCompanyServlet
 */
@WebServlet("/VerifyCompanyServlet")
public class VerifyCompanyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public VerifyCompanyServlet() {
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
		out.println("hello world");
		String companyname = request.getParameter("companyname");
		String companyPassword = request.getParameter("companyPassword");
		
		HttpSession session = request.getSession();
		session.setAttribute("companyname", companyname);
		
		out.print(companyname);
		out.print(companyPassword);

		java.sql.ResultSet rs = null;
		Connection connection = (Connection) new ConnectDB().getCon();

		System.out.print("数据库连接成功");

		Statement statement;
		try {
			statement = (Statement) connection.createStatement();
			rs = statement.executeQuery("select * from tb_company");

			String companynameDB = null;
			String companyPasswordDB = null;

			while (rs.next()) {
				companynameDB = rs.getString("name");
				companyPasswordDB = rs.getString("password");

				System.out.println(companynameDB);
				System.out.println(companyPasswordDB);

			}
			if (companyname.equals(companynameDB) && companyPassword.equals(companyPasswordDB)) {
				System.out.println("企业名正确");
				out.println("企业名正确");
				System.out.println("密码正确");
				out.println("密码正确");
				out.println("验证结束");
				out.println("<!DOCTYPE html>");
				out.println("<html>");
				out.println("<head><title>企业登录成功</title></head>");
				out.println("<body>");
				out.println("<script src='js/companyJumpToPage.js' type='text/javascript' charset='utf-8'>");
				out.println("</script>");
				out.println("</body>");
				out.println("</html>");
			} else {
				out.println("<!DOCTYPE html>");
				out.println("<html>");
				out.println("<head><title>登录失败</title></head>");
				out.println("<body>");
				out.println("<script src='js/companyJumpToIndex.js' type='text/javascript' charset='utf-8'>");
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
