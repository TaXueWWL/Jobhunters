<%@page import="com.bwm.db.ConnectDB"%>
<%@page import="java.sql.*"%>
<%@page import="com.bwm.db.ConnectDB"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="css/buttonStyle.css" />
<style type="text/css">
li {
	color: red;
}

#menu {
	margin-top: 150px;
	align: center;
	height: 500px;
	font-size: 20px;
}

body {
	background-attachment: fixed;
}

#content {
	margin-top: 150px;
}

fieldset {
	margin-top: 100px;
	padding-top: 20px;
}

legend {
	margin-top: 80px;
}

body {
	background-image: url(img/user-bg.jpg);
}

th {
	color: black;
	font-family: 微软雅黑;
	font-size: 20px;
}

tr {
	color: white;
	font-family: 微软雅黑;
	font-size: 25px;
}

#sendemail {
	margin-left: 400px;
}

input {
	width: 210px;
}
</style>
<title>发送邮件</title>
<body>
	<jsp:include page="header-student.jsp"></jsp:include>

	<div class="container-fluid">
		<div class="col-md-12">
			<div class="row">
				<%
					Connection con = null;
					Statement stmt = null;
					ResultSet rs = null;

					Connection connection = new ConnectDB().getCon();
					request.setCharacterEncoding("UTF-8");

					stmt = connection.createStatement();
					System.out.print("数据库连接成功");
				%>

				<br> <br> <br>
				<%
					String sender = null;
					String receiver = null; //经营行业
					String content = null;

					sender = request.getParameter("sender");
					receiver = request.getParameter("receiver");
					content = request.getParameter("content");

					String sql_1 = "update studentsendemail set sender='" + sender + "', receiver='" + receiver + "',content='" + content
							+ "'";

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
								<font color="red">【邮件发送成功！】</font>

							</h1></td>


					</tr>
				</table>


				<center>
					<img align="center" src="img/admin-logo.png">
				</center>
				<center>

					<br>
					<h3>
						<font color="red">您的邮件正在提交到对方邮箱！</font>
					</h3>
					<br>
					<form action="studentPage.jsp" method="post">
						<button type="submit" class="btn btn-info  btn-lg active">确认</button>
					</form>
				</center>
			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>