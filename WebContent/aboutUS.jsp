<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
<title>关于我们</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
<style type="text/css">
.row div {
	background-color: ghostwhite;
	height: 600px;
}

body {
	padding-bottom: 50px;
}

body {
	background-image: url(img/aboutUsBg.jpg);
	padding-top: 50px;
}

.board {
	margin: 150px 300px 0px 300px;
	text-align: center;
	font-family: "微软雅黑";
	font-size: 30px;
	color: darkblue;
	padding: 20px;
}
</style>
</head>
<body>
	<jsp:include page="header-default.jsp"></jsp:include>

	<div id="aboutus" align="center">
		<div class="board">
			JobHunters是一家专注毕业生找工作以及<br/><br/>
			用人单位发布招聘岗位的在线求职网站<br/><br/>
			致力于向广大企业和毕业生提供最合适的服务<br/>
		</div>
	</div>
	
	<jsp:include page="footer.jsp"></jsp:include>
	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>