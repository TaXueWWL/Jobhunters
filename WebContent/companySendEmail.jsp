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
	background-image: url(img/company-bg.jpg);
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
#sendemail{
	margin-left:400px;
}
input {
	width:210px;
}	
</style>
<title>发送邮件</title>
<body>
	<jsp:include page="header-company.jsp"></jsp:include>

	<div class="container-fluid">
		<div class="col-md-12">
			<div class="row">
				<br/>	<br/>	<br/>	<br/>	<br/>	<br/><br/>	<br/>
				<form action="companyUpdateEmail.jsp" method="post">
				<div id="sendemail">
				<font size="5" color="white">发信人：</font>
				<input type="text" name="sender" id="sender" /><br />
				<br />
				<font size="5" color="white">收信人：</font>
				<input type="text" name="receiver" id="receiver" /><br />
				<br />
				<font size="5" color="white">内容：</font>
				<br />
				<textarea name="content" cols="80" rows="7"></textarea>
			
				<br/><br/>
				
				<button type="submit" class="btn btn-primary btn-lg">确定</button>
				&nbsp;&nbsp;
				<button type="reset" class="btn btn-primary btn-lg">重置</button>
				
				</div>
				</form>

			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>