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

	<%
		String studentname = request.getParameter("studentname");
		String sql_2 = "select * from tb_student where name='" + studentname + "'";
		try {
			rs = stmt.executeQuery(sql_2);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		rs.next();
		session.setAttribute("studentname", rs.getString("name"));
	%>
	<br>
	<br>
	<br>
	<table width="100%">
		<tr>
			<td align="center"><h1>
					<font color="red">【学生${sessionScope.studentname}信息】</font>
				</h1></td>
		</tr>
	</table>

	<br>


	<center>
		<form action="modifystudent_3.jsp" method="post">
			<P>
				姓名：&nbsp; &nbsp;&nbsp;<input type="text" id="name" name="name"
					value="<%=rs.getString("name")%>">
			<P>
				密码： &nbsp;&nbsp;&nbsp;<input type="text" id="password"
					name="password" value="<%=rs.getString("password")%>">
			<P>
				性别： &nbsp;&nbsp;&nbsp;<input type="text" id="sex" name="sex"
					value="<%=rs.getString("sex")%>">
			<P>
				生日： &nbsp;&nbsp;&nbsp;<input type="text" id="birthday"
					name="birthday" value="<%=rs.getDate("birthday")%>">
			<P>
				院校： &nbsp;&nbsp;&nbsp;<input type="text" id="school" name="school"
					value="<%=rs.getString("school")%>">
			<P>
				专业： &nbsp;&nbsp;&nbsp;<input type="text" id="specialty" name="specialty"
					value="<%=rs.getString("specialty")%>">
			<P>
				学历：&nbsp; &nbsp;&nbsp;<input type="text" id="knowledge"
					name="knowledge" value="<%=rs.getString("knowledge")%>">
			<P>
				email： &nbsp;&nbsp;&nbsp;<input type="text" id="email" name="email"
					value="<%=rs.getString("email")%>">
			<P>
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