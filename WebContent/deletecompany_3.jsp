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
<body background="img/admin-bg.jpg" data-spy="scroll">
<jsp:include page="header-admin.jsp"></jsp:include>
	<% 	Connection con = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	Connection connection = new ConnectDB().getCon();

	stmt = connection.createStatement();
	System.out.print("数据库连接成功");
	
        String name = null;
		String companyname = (String) session.getAttribute("name");
		String sql_1 = "select * from tb_company where name='" + companyname.trim() + "'";
		
		try {
			rs = stmt.executeQuery(sql_1);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		if(rs.next())
		{
			name = rs.getString("name");
		}
		
		String sql = "delete from tb_company where name='" + companyname + "'";
		
		try {
			stmt.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	%>
	<br><br><br><br><br><br>
	<table width="100%"><tr>

	<td align="center"><font color="red"><h1>【删除企业信息成功】</h1></font></td>

	</tr>
	</table>
	
	
	<br>
	
	<center>

		<h2><font color="blue"><%=companyname%></font>已经被删除！</h2>
		<br><br>
		<a href="deletecompany.jsp"><button type="reset" class="btn btn-warning btn-lg" id="back" name="back" value="返回">返回</button></a>
	</center>
    	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>