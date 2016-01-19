<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title></title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
<style type="text/css">
.row div {
	height: 600px;
}

body {
	background="img/company-bg.jpg";
	padding-bottom: 10px;
}

body {
	padding-top: 10px;
}

#Sitetitle {
	color: white;
}
</style>

</head>

<body>
	<div class="container-fluid">
		<header class="header">

			<div class="col-md-12">
				<nav role="navigation"
					class="navbar navbar-inverse dark-nav navbar-fixed-top">
					<div class="navbar-header">
						<button data-target="#bs-example-navbar-collapse-3"
							data-toggle="collapse" class="navbar-toggle" type="button">
							<span class="sr-only">Toggle navigation</span>

						</button>
						<a href="adminindex.jsp" class="navbar-brand" id="Sitetitle">就业求职网<font size="5" color="pink">身份：企业</font></a>
					</div>
					<div id="bs-example-navbar-collapse-3"
						class="collapse navbar-collapse">
						<ul class="nav navbar-nav">
							<li class="active"><a href="index.jsp">主页</a></li>
							<li><a href="#"></a></li>
							<li><a href="searchCompanyInfo.jsp">查看信息</a></li>
							<li><a href="modifyCompany.jsp">修改信息</a></li>
							<li><a href="companySearchStudentInfo.jsp">查看学生信息</a></li>
							<li><a href="companySendEmail.jsp">发送邮件</a></li>
							<li><a href="companySearchStudentEmail.jsp">查看学生邮件</a></li>
							
						</ul>
						<div id="bs-example-navbar-collapse-3"
							class="collapse navbar-collapse navbar-right">
							<ul class="nav navbar-nav">
								<li><a href="#"></a></li>
								<li><a href="#"></a></li>
								<li><marquee>
										<font size=+3 color=orange>欢迎使用</font>
									</marquee></li>
								<li><a href="#"></a></li>
								<li><a href="#"></a></li>

							</ul>

						</div>
						</div>
				</nav>
			</div>
		</header>
		</div>
		<script src="js/jquery.js"></script>
		<script src="js/bootstrap.min.js"></script>
</body>
</html>