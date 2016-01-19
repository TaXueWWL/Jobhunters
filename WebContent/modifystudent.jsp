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
<title>修改个人信息</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
<style type="text/css">
	body {
	background-image: url(img/user-bg.jpg);
}	
</style>
<%
	request.setCharacterEncoding("utf-8");
%>


</head>
<body style='background-color: cornsilk;'>
	<jsp:include page="header-student.jsp"></jsp:include>
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
	<br>
	<br>
	<br>
	<table width="100%">
		<tr>
			<td align="center"><h1>
					<font color="red">【修改学生信息】</font>
				</h1></td>
		</tr>
	</table>

	<br>

	<center>

		<form action="modifystudent_2.jsp" method="post">
			<h3>
				<font color="blue">请核对您的用户名： </font>
			</h3>
			<br> <select name="studentname"
				style="font-size: 20px; font-family: '微软雅黑'; font-style: bold;">

				<%
					String studentname = (String) session.getAttribute("studentname");
					try {
						rs = stmt.executeQuery("select * from tb_student where name=" + "'" + studentname + "'");
					} catch (SQLException e) {
						e.printStackTrace();
					}
					while (rs.next()) {
						String name = rs.getString("name");
				%>
				<option value="<%=name%>"><%=name%></option>

				<%
					}
				%>
			</select>
			<P>
				<br>
				<br>
				<button type="submit" class="btn btn-primary btn-lg">确定</button>
				&nbsp;&nbsp;
				<button type="reset" class="btn btn-primary btn-lg">重置</button>
		</form>
	</center>

	<jsp:include page="footer.jsp"></jsp:include>
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>