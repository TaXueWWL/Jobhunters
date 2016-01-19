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
<title>信息浏览</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
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
	body {
	
	background-image: url(img/aboutUsBg.jpg);
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
	#showflink{
		margin-top: 1px;
	}
	h1{
		padding-top:1px;
		margin-top: 1px;
	}
	.container{
		padding-top:1px;	
		margin-top: 1px;
		margin-bottom: -300px;
	}
</style>
<title>查看个人信息</title>
<body >
<jsp:include page="header-default.jsp"></jsp:include>
	
	<div class="container-fluid">
		<div class="col-md-12">
			<div class="row">
	


				<div class="col-md-12 container">
                    <p><br><br><br><br>
                   	<%
					java.sql.ResultSet rs = null;
					Connection connection = new ConnectDB().getCon();

					Statement statement = connection.createStatement();

					System.out.print("数据库连接成功");

					rs = statement.executeQuery("select * from tb_student");
				%>
				<center>
					<h1><font color="blue">学生求职信息</font></h1>
				</center>
				<p>
					
				<center>
					<table width="80%" border="3" bordercolor="orange" id="showflinks">
						<tr>
							<th width="5%">性别</th>
							<th width="20%">毕业院校</th>
							<th width="10%">专业</th>
							<th width="10%">学历</th>
							<th width="20%">电子邮件</th>
						</tr>

						<%
							while (rs.next()) {
						%>
						<tr>
							<td><%=rs.getString("sex")%></td>
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
				<div class="col-md-12 container">
                  
                   	<%
					java.sql.ResultSet rs1 = null;
					Connection connection1 = new ConnectDB().getCon();

					Statement statement1 = connection1.createStatement();

					System.out.print("数据库连接成功");

					rs1 = statement1.executeQuery("select * from tb_company");
				%>
				<center>
				<h1><font color="blue">加盟企业信息</font></h1>
				</center>
				<p>
				
				<center>
					<table width="80%" border="3" bordercolor="orange" id="showflink">
						<tr>
							<th width="5%">企业名</th>
							<th width="15%">电子邮件</th>
							<th width="10%">电话</th>
							<th width="20%">经营行业</th>
							<th width="40%">地址</th>
						</tr>

						<%
							while (rs1.next()) {
						%>
						<tr>
							<td><%=rs1.getString("name")%></td>
							<td><%=rs1.getString("email")%></td>
							<td><%=rs1.getString("tel")%></td>
							<td><%=rs1.getString("manage")%></td>
							<td><%=rs1.getString("address")%></td>
						</tr>
						<%
							}
						%>
					</table>
					<%
						rs1.close();
						statement1.close();
						connection1.close();
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