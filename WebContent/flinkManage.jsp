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
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="css/buttonStyle.css" />
<style type="text/css">
#menu {
	margin-top: 150px;
	align: center;
	height: 500px;
	font-size: 30px;
	color: red;
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

#content legend {
	font-size: 40px;
	color: red;
	background-color: #FFEFDB;
	text-align: center;
}
#showflinks{
	font-size: 24px;
}
#4{
	margin-bottom: 100px;
	padding:100px;
}
a {
	cursor: pointer;
}
</style>
<title>管理员页面</title>
</head>
<body background="img/admin-bg.jpg" data-spy="scroll"
	data-target="#menu">
	<jsp:include page="header-admin.jsp"></jsp:include>

	<div class="row-fluid" id="manage">
		<div class="span3 col-md-3" id="menu">
			<ul class="nav nav-list" data-spy="affix" data-offset-top="280">
				<li><a href="#1"></a></li>
				<li><a href="#2">·增加友情链接</a></li>
				<li><a href="#3">·删除友情链接</a></li>
				<li><a href="#4">·查看友情链接</a></li>
			</ul>
		</div>
		<div class="span9 col-md-9" id="content">
			<fieldset id="1">
				<legend></legend>
				<div class="fieldset-content">
					<br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
					<br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
					<br /> <br /> <br /> <br />
				</div>
			</fieldset>
			<fieldset id="2">
				<legend>【增加友情链接】</legend>
				<div class="fieldset-content">
					<form action="insertSiteServlet" method="post">
						<center>
							<br /> <br /> <br />
							<h1>友情链接信息</h1>
							<lable>网站名称&nbsp;&nbsp;&nbsp;<input type="text"
								placeholder="情输入网站名称" id="sitename" name="sitename"></lable>
							<br>
							<p>
							<p>
								<lable>网站地址&nbsp;&nbsp;&nbsp;<input type="text"
									placeholder="请输入网站地址" id="siteaddress" name="siteaddress"
									value="http://"></lable>
								<br>
							<p>
						</center>
						<center>
							<br>
							<button type="submit" class="btn btn-primary btn-lg">提交</button>
							<button type="reset" class="btn alert-danger btn-lg">重置</button>
						</center>
						<br /> <br /> <br />
					</form>
				</div>
			</fieldset>
			<br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
			<fieldset id="3">
				<legend>【删除友情链接】</legend>
				<div class="fieldset-content">
				<br/> <br/>
					<center>
						<form action="deleteSiteServlet" method="post">
							<%
								Connection con = null;
								Statement stmt = null;
								ResultSet rs = null;

								Connection connection = new ConnectDB().getCon();
								request.setCharacterEncoding("UTF-8");

								stmt = connection.createStatement();
								System.out.print("数据库连接成功");
							%>

							<h3>请选择要删除的友情链接：</h3>
							<br> <select name="sitename"
								style="font-size: 20px; font-family: '微软雅黑'; font-style: bold;">

								<%
									String sql = "select * from tb_flink";

									try {
										rs = stmt.executeQuery(sql);
									} catch (SQLException e) {
										e.printStackTrace();
									}

									while (rs.next()) {
										String sitename = rs.getString("name");
										String siteaddress = rs.getString("address");
								%>
								<option value="<%=sitename%>"><%=sitename%>/<%=siteaddress%></option>
								<%
									}
								%>
							</select>
							<P>
								<br/> <br/>
							<center>
								<button type="submit" class="btn btn-danger btn-lg">确定</button>
								<button type="reset" class="btn btn-primary btn-lg">重置</button>
							</center>



							</p>
							 <br/><br/> <br/> <br/><br/> <br/> <br/><br/> <br/>

						</form>
					</center>
				</div>
			</fieldset>
			<fieldset id="4">
				<legend>【查看友情链接】</legend>
				<div class="fieldset-content">
				<br>
				<%
					java.sql.ResultSet rs2 = null;
					Connection connection2 = new ConnectDB().getCon();

					Statement statement2 = connection2.createStatement();

					System.out.print("数据库连接成功");

					rs2 = statement2.executeQuery("select * from tb_flink");
				%>
				<center>
					<img src="img/search-logo.png" width="89" height="89">
				</center>
				<p>
					<br>
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
				<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
		</div>		
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>