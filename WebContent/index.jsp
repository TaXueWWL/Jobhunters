<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<jsp:useBean id="con" class="com.bwm.db.Conn" scope="page" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>主页</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="css/buttonStyle.css" />
<style type="text/css">
.row div {
	background-color: white;
	height: 600px;
}

body {
	padding-bottom: 50px;
}

body {
	padding-top: 50px;
}

#welcome {
	padding-top: 3px;
	margin-top: 41px;
	width: 100%;
	height: 550px;
}

.login-form {
	background-color: lightskyblue;
}

#login-from {
	margin-bottom: 20px;
}

li>a {
	color: black;
}
</style>
</head>
<body>
	<jsp:include page="header-default.jsp"></jsp:include>


	<div class="col-md-12" id="welcome">
		<div align="center">
			<table border="0" width="100%" cellspacing="0" cellpadding="0"
				height="100%">
				<tr>
					<td width="70%"><img border="0"
						src="img/index-welcome-img.jpg" width="1000" height="540">
						<p align="center"></td>
					<td width="30%" class="login-form" align="center">
						<div id="login-form">

							<div class="col-md-9">
								<p class="lead text-muted">
								<h2>用户登录</h2>
								</p>
								<div class="lt-tabs">
									<div class="tabbable">
										<ul class="nav nav-tabs">
											<li class=""><a href="#tabStudent" data-toggle="tab"><i
													class="fa fa-home"></i> 学生登录 </a></li>
											<li class="active"><a href="#tabCompany"
												data-toggle="tab"><i class="fa fa-cogs"></i> 企业登录</a></li>
										</ul>
										<div class="tab-content">
											<div class="tab-pane" id="tabStudent">
												<br />
												<form action="VerifyStudentServlet" method="post">
													用户名:<input type="text" align="center" autofocus="autofocus"
														name="username" /><br /> <br />
													密&nbsp;&nbsp;&nbsp;&nbsp;码:<input type="password"
														align="center" autofocus="autofocus" name="stuPassword" /><br />
													<button class="btn blue" type="submit">登录</button>
													<button class="btn default" type="reset">重置</button>
												</form>

											</div>
											<div class="tab-pane active" id="tabCompany">
												<br />
												<form action="VerifyCompanyServlet" method="post">
													企业名:<input type="text" align="center" autofocus="autofocus"
														name="companyname" /><br /> <br />
													密&nbsp;&nbsp;&nbsp;&nbsp;码:<input type="password"
														align="center" autofocus="autofocus"
														name="companyPassword" /><br />
													<button class="btn blue" type="submit">登录</button>
													<button class="btn default" type="reset">重置</button>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
					</td>
				</tr>
			</table>
		</div>
	</div>





	<jsp:include page="footer.jsp"></jsp:include>
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>