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
<title>企业账号注销</title>
</head>
<body background="img/admin-bg.jpg" data-spy="scroll"
	data-target="#menu">
	<jsp:include page="header-admin.jsp"></jsp:include>
	<% 	
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		Connection connection = new ConnectDB().getCon();
		request.setCharacterEncoding("UTF-8");


		stmt = connection.createStatement();
		System.out.print("数据库连接成功");

	%>
	
	<table width="100%"><tr>
	<br><br><br><br><br><br>
	<td align="center"><font color="red"><h1>【删除企业信息】</h1></font></td>
	</tr>
	</table>
	
	<br>
	
	<center>
		<form action="deletecompany_2.jsp" method="post">
			<h3>请选择要删除的企业：</h3> <br> <select name="name" style="font-size:20px; font-family:'微软雅黑';font-style:bold ;">
		
				<%
					String sql = "select * from tb_company";
					
					//String sql1 = "select * from studenttable";
				
					try {
						rs = stmt.executeQuery(sql);
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
			<br><br>
			<center>
			<button type="submit" class="btn btn-primary btn-lg">确定</button>
			<button type="reset" class="btn btn-primary btn-lg">重置</button>
			</center>
			
			
			
			
		</form>
	</center>
    
	<jsp:include page="footer.jsp"></jsp:include>
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>