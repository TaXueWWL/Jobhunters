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
<title>管理员登录</title>
</head>
<body background="img/admin-bg.jpg">
	<jsp:include page="header-admin-default.jsp"></jsp:include>

	<div class="container-fluid">
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-4">
					<p>
						<br /> <br /> <br /> <br /> <br /> <br /> <br />
					<center>
						<h1>
							<font color="green">管理员登录</font>
						</h1>
					</center>
					<br /> <br /> <br />
					<form action="validateAdmin.jsp" name="login" method="post">
						<center>
							<label>账号<input type="text" id="adminname"
								name="adminname" /></label> <br> <label>密码<input
								type="password" id="password" name="password"></label> <br>
							<button type="submit" class="btn btn-primary">提交</button>
							<button type="reset" class="btn alert-danger">重置</button>
						</center>
					</form>
				</div>


				<div class="col-md-8">
					<p>
						<br /> <br /> <br /> <br />
					<center>
						<h1>
							<font color="red">管理员须知</font>
						</h1>

						<br>
					</center>
					<center>
						<img align="center" src="img/admin-logo.png">
					</center>
					<center>
						<p>
						<ol>
							<li><h3>
									<font color="red">请牢记管理员账户及密码,请勿告知他人.</font>
								</h3></li>
							<li><h3>
									<font color="red">管理员账号由系统维护者给出,未经允许禁止增加.</font>
								</h3></li>
							<li><h3>
									<font color="red">本系统仅做管理用户之用,所有数据已人工备份.</font>
								</h3></li>
						</ol>

					</center>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>

</body>
</html>