<%@page import="com.bwm.db.ConnectDB"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>修改企业信息</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
<style type="text/css">
	body {
	background-image: url(img/company-bg.jpg);
}	
</style>
<%
	request.setCharacterEncoding("utf-8");
%>


</head>
<body style='background-color: cornsilk;'>
	<jsp:include page="header-company.jsp"></jsp:include>
	<%
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;

		Connection connection = new ConnectDB().getCon();
		request.setCharacterEncoding("UTF-8");

		stmt = connection.createStatement();
		System.out.print("数据库连接成功");
	%>

	<br>
	<br>
	<br>
	<%
		String name = null;
		String manage = null;	//经营行业
		String tel = null;
		String email = null;
		String address = null;


		String companyname = request.getParameter("name");
		
		String sql =  "select * from tb_company where name='" + companyname + "'";
		rs = stmt.executeQuery(sql);
		if (rs.next()) //如果学生存在
		{
			name = request.getParameter("name");
			manage = request.getParameter("manage");
			tel = request.getParameter("tel");
			email = request.getParameter("email");
			address = request.getParameter("address");
		}

		String sql_1 = "update tb_company set name='" + name + "', manage='" + manage + "',tel='" + tel
				+ "',email='" + email + "',address='" + address + "'";

		try {
			stmt.executeUpdate(sql_1);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	%>

	<table width="100%">
		<tr>
			<br>
			<br>
			<br>
			<td align="center"><h1>
					<font color="red">【修改企业信息成功！】</font>
					
				</h1></td>
				

		</tr>
	</table>


 <center><img align="center" src="img/admin-logo.png"></center>
	<center>

		<br>
		<h3>
			<font color="red"><%=name%></font> 的信息已经修改完毕！
		</h3>
		<br>
		<form action="companyPage.jsp" method="post">
			<button type="submit" class="btn btn-info  btn-lg active">确认</button>
		</form>
	</center>


	<jsp:include page="footer.jsp"></jsp:include>
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>