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
		String tel = null;
		String manage = null;//经营行业
		String address = null;
		String email = null;

				
		
		name = request.getParameter("name");
		String sql = "select * from tb_company where name='" + name + "'";
		rs = stmt.executeQuery(sql);
		if (rs.next()) {
			name = rs.getString("name");
			tel = rs.getString("tel");
			manage = rs.getString("manage");
			address = rs.getString("address");
			email = rs.getString("email");
		}
		session.setAttribute("name", name);
	%>
	<center><br><br><br><br><br>
		<font color="red"><h1>--确定删除吗？--</h1></font>
<br/>	
		

	
		<P>
			<h3>企业名称：<%=name%></h3>
		
			<h3>联系方式：<%=tel%></h3>
		
			<h3>经营行业: <%=manage%></h3>
		
			<h3>企业地址: <%=address%></h3>
		
			<h3>企业邮箱: <%=email%></h3>

		<form action="deletecompany_3.jsp" method="post">
			<button type="submit" class="btn btn-primary btn-lg">确定</button>&nbsp;&nbsp;
			<button type="reset" class="btn btn-primary btn-lg" id="back" name="back" value="返回" onclick="javascript:history.go(-1)">返回</button>
		</form>
		
		
		</center>
    	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>