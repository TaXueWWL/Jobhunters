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
<title>友情链接</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
<style type="text/css">
.row div {
	background-color: ghostwhite;
	height: 600px;
}

body {
	padding-bottom: 50px;
}

body {
	background-image: url(img/aboutUsBg.jpg);
	padding-top: 50px;
}

.board {
	margin: 75px 300px 0px 300px;
	text-align: center;
	font-family: "微软雅黑";
	font-size: 30px;
	color: blue;
	padding: 20px;
}
a {
	cursor: pointer;
}
</style>
</head>
<body>
	<jsp:include page="header-default.jsp"></jsp:include>

	<div id="aboutus" align="center">
		<div class="board">
			<h1><font color="black">【查看友情链接】</font></h1>
			<center>
					<img src="img/search-logo.png" width="89" height="89">
				</center>
				<div class="fieldset-content">
				
				<%
					java.sql.ResultSet rs2 = null;
					Connection connection2 = new ConnectDB().getCon();

					Statement statement2 = connection2.createStatement();

					System.out.print("数据库连接成功");

					rs2 = statement2.executeQuery("select * from tb_flink");
				%>
				
				<p>
					
				<center>
					<table width="80%" border="3" bordercolor="blue" id="showflinks">
						<tr>
							<th width="50%">网站名称</th>
							<th width="50%">网站链接</th>
						</tr>

						<%
							while (rs2.next()) {
						%>
						<tr>
							<td><%=rs2.getString("name")%></td>
							<td><a><%=rs2.getString("address")%></a></td>
						</tr>
						<%
							}
						%>
					</table>
					<%
						rs2.close();
						statement2.close();
						connection2.close();
					%>
				</div>
		</div>
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>