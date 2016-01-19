<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<jsp:useBean id="con" class="com.bwm.db.Conn"  scope="page" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>企业注册</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="css/buttonStyle.css" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/register.css" rel="stylesheet" type="text/css"
	media="all">
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

.row div {
	background-color: lightblue;
	height: 600px;
}

.inset {
	margin: 38px 200px 0px 200px;
}

#submit {
	margin-left: 140px;
}

body {
	background-image: url(img/registerBg.jpg);
}
.login-head {
	padding: 2em 0;
	background: #81DAF5;
	position:relative;
}
</style>
</head>
<body>
	<jsp:include page="header-default.jsp"></jsp:include>

	<div class="inset">
		<div class="login-head">
			<h1>企业注册</h1>
		</div>

		<form class="register" action="companyRegisterServlet">
			登录名 <input type="text" name="username" width="25" id="inputBox1_1"
				onblur="checkUserName();"/>
				<span id="usernameSpan"></span>
				 <br /> 
			 密&nbsp;&nbsp;&nbsp;码 <input
				type="password" name="password" width="30" id="inputBox1_2"
				onblur="checkPass()" /> <span
				id="passwordSpan"></span> 
				<br /> <br /> 
				确&nbsp;&nbsp;&nbsp;认 <input
				type="password" name="rePassword" width="30" id="inputBox1_3"
				onblur="checkRePass()"/> <span
				id="rePasswordSpan"></span> <br /> <br />

			<button id="submit" class="btn blue" type="submit">提交</button>
			<button id="reset" class="btn orange" type="reset">重置</button>

		</form>
	</div>
	</div>
	<script type="text/javascript">
	$(document).ready(function(){
		 var $usernameSpan = $("#usernameSpan");
		 $usernameSpan.html("请输入用户名，英文字母开头，数字结尾，例如:xyz123");
	});
	
		 //验证输入密码
        function checkUserName() {     
          var $username = $("#inputBox1_1");
          var $usernameSpan = $("#usernameSpan");
 		 $usernameSpan.html("请输入用户名，英文字母开头，数字结尾，例如:xyz123");
          
          if ($username.val() == "") {
          	$usernameSpan.html("用户名不能为空！");
          	return false;
          } 
          if ($username.val().length < 5) {
          	$usernameSpan.html("用户名必须大于等于6个字符!");
          	return false;
          }
          return true;
        }
        //验证重复密码
        function checkRePass() {
            var $pwd = $("#inputBox1_2"); //输入密码
            var $repwd = $("#inputBox1_3");  //再次输入密码
            var $divID = $("#rePasswordSpan");
            $divID.html("");
            if ($pwd.val() != $repwd.val()) {
                $divID.html("两次输入的密码不一致");
                return false;
            }
            return true;
        }
    	function checkPass() {
            var $pwd = $("#inputBox1_2");
            var $divID = $("#passwordSpan");
            $divID.html("");
            if ($pwd.val() == "") {
                $divID.html("密码不能为空");
                return false;
            }
            if ($pwd.val().length < 5) {
                $divID.html("密码必须等于或大于5个字符");
                return false;
            }
            return true;
        }
	</script>




	<jsp:include page="footer.jsp"></jsp:include>
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>