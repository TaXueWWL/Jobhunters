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
		color:red;
	}
	#menu{
		margin-top: 150px; 
		align: center;
		height: 500px;
		font-size: 20px;
	}
	body {
		 background-attachment:fixed;
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
	color:black;
		font-family: 微软雅黑;
		font-size: 20px;
	}
	tr {
		color:white;
		font-family: 微软雅黑;
		font-size: 25px;	
	}
</style>
<title>查看个人信息</title>
<body >
<jsp:include page="header-student.jsp"></jsp:include>
	
	<div class="container-fluid">
		<div class="col-md-12">
			<div class="row">
	


				<div class="col-md-12">
                    <p><br><br><br><br>
                   	<%
					java.sql.ResultSet rs = null;
					Connection connection = new ConnectDB().getCon();

					Statement statement = connection.createStatement();

					System.out.print("数据库连接成功");
					String studentname = (String) session.getAttribute("studentname");
					rs = statement.executeQuery("select * from tb_student where name='" + studentname + "'");
				%>
				<br/><br/><br/>
				<center>
					<img src="img/search-logo.png" width="89" height="89">
				</center>
				<p>
					<br>
				<center>
					<table width="80%" border="3" bordercolor="orange" id="showflinks">
						<tr>
							<th width="5%">用户名</th>
							<th width="5%">性别</th>
							<th width="15%">出生年月</th>
							<th width="20%">毕业院校</th>
							<th width="10%">专业</th>
							<th width="10%">学历</th>
							<th width="20%">电子邮件</th>
						</tr>

						<%
							while (rs.next()) {
						%>
						<tr>
							<td><%=rs.getString("name")%></td>
							<td><%=rs.getString("sex")%></td>
							<td><%=rs.getString("birthday")%></td>
							<td><%=rs.getString("school")%></td>
							<td><%=rs.getString("specialty")%></td>
							<td><%=rs.getString("knowledge")%></td>
							<td><%=rs.getString("email")%></td>
						</tr>
						<%
							}
						%>
					</table>
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