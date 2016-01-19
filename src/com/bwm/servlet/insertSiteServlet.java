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
 * Servlet implementation class insertSiteServlet
 */
@WebServlet("/insertSiteServlet")
public class insertSiteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public insertSiteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		// 设置响应的文本类型为HTML，字符编码为UTF-8
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		
		String sitename = request.getParameter("sitename");
		String siteaddress = request.getParameter("siteaddress");
		System.out.println(sitename);
		System.out.println(siteaddress);
		
		// 参数插入数据库，注册用户
		java.sql.ResultSet rs = null;
		Connection connection = (Connection) new ConnectDB().getCon();
		System.out.print("数据库连接成功");
		
		java.sql.PreparedStatement pstmt = null;
		//构造sql语句
		String sql = "insert into tb_flink values(?,?)";
		//数据提交
		try {
			pstmt = connection.prepareStatement(sql);
			pstmt.setString(1, sitename);
			pstmt.setString(2, siteaddress);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head><title>添加友情链接成功</title></head>");
		out.println("<body>");
		out.println("<script src='js/addFriendLinks.js' type='text/javascript' charset='utf-8'>");
		out.println("</script>");
		out.println("</body>");
		out.println("</html>");
	}

}
