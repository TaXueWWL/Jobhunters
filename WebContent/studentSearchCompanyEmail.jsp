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
	color: black;
	font-family: 微软雅黑;
	font-size: 20px;
}
</style>
<title>查看邮件</title>
<body>
	<jsp:include page="header-student.jsp"></jsp:include>

	<div class="container-fluid">
		<div class="col-md-12">
			<div class="row">



				<div class="col-md-12">
					<p>
						<br>
						<br>
						<br>
						<br>
						<%
							java.sql.ResultSet rs = null;
							Connection connection = new ConnectDB().getCon();

							Statement statement = connection.createStatement();

							System.out.print("数据库连接成功");

							rs = statement.executeQuery("select * from companysendemail");
						%>
						<br>
						<br>
						<br>
						<br>
					<center>
						<img src="img/search-logo.png" width="89" height="89">
					</center>
					<p>
						<br>
					<center>
						<table width="80%" border="3" bordercolor="orange" id="showflinks">
							<tr>
								<th width="20%"><center>发件人</center></th>
								<th width="80%"><center>邮件内容</center></th>
							</tr>

							<%
								while (rs.next()) {
							%>
							<tr>
								<td><font color="white"><%=rs.getString("sender")%></font></td>
								<td><font color="white"><%=rs.getString("content")%></font></td>
							</tr>
							<%
								}
							%>
						</table>
						</center>
						<%
							rs.close();
							statement.close();
							connection.close();
						%>
					
				</div>
			</div>
		</div>
	</div>


	<jsp:include page="footer.jsp"></jsp:include>
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>