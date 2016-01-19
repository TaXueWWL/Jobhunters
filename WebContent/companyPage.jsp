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
	background-image: url(img/company-bg.jpg);
}	
</style>
<title>企业页面</title>
<body >
<jsp:include page="header-company.jsp"></jsp:include>
	
	<div class="container-fluid">
		<div class="col-md-12">
			<div class="row">
	


				<div class="col-md-12">
                    <p><br><br><br><br>
                    <center>
                        <h1>
                            <font color="blue">请从导航栏任意一项开始吧！</font>
                        </h1>
                        
                    <br>
                </center>
                <center><img align="center" src="img/admin-logo.png"></center>
                    <center>
                        <p>
                            <ul>
                                <li><h3></h3></li>
                                <li><h3>欢迎使用毕业生就业求职系统！</h3></li>
                                <li><h3>请您务必牢记您的账号和密码！</h3></li>
                                <li><h3>登录后完善个人详细身份信息！</h3></li>
                                <li><h3>根据信息您是尊贵的企业用户！</h3></li>
                                <li><h3>请选择您中意的学生招入麾下！</h3></li>
                            </ul>
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