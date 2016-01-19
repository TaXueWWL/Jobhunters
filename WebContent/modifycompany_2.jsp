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

	<%
		String companyname = request.getParameter("companyname");
		String sql_2 = "select * from tb_company where name='" + companyname + "'";
		try {
			rs = stmt.executeQuery(sql_2);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		rs.next();
		session.setAttribute("companyname", rs.getString("name"));
	%>
	<br>
	<br>
	<br>
	<table width="100%">
	<br/><br/>
		<tr>
			<td align="center"><h1>
					<font color="red">【企业:${sessionScope.companyname}的信息】</font>
				</h1></td>
		</tr>
	</table>

	<br>


	<center>
		<form action="modifycompany_3.jsp" method="post">
			<P>
				名称：&nbsp; &nbsp;&nbsp;<input type="text" id="name" name="name"
					value="<%=rs.getString("name")%>">
			<P>
				行业： &nbsp;&nbsp;&nbsp;<input type="text" id="manage "
					name="manage" value="<%=rs.getString("manage")%>">
			<P>
				电话： &nbsp;&nbsp;&nbsp;<input type="text" id="tel" name="tel"
					value="<%=rs.getString("tel")%>">
			<P>
				邮件： &nbsp;&nbsp;&nbsp;<input type="text" id="email" name="email"
					value="<%=rs.getString("email")%>">
			<P>
				地址： &nbsp;&nbsp;&nbsp;<input type="text" id="address"
					name="address" value="<%=rs.getString("address")%>">
			
				<br>
			<center>
				<button type="submit" class="btn btn-primary btn-lg">确定</button>
				&nbsp;&nbsp;
				<button type="reset" class="btn btn-success btn-lg">重置</button>
				</P>
			</center>
		</form>
	</center>

	<jsp:include page="footer.jsp"></jsp:include>
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>