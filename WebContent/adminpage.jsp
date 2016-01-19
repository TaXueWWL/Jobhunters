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
</style>
<title>管理员页面</title>
</head>
<body  background="img/admin-bg.jpg"  data-spy="scroll" data-target="#menu"> 
	<jsp:include page="header-admin.jsp"></jsp:include>
	
	<div class="container-fluid">
		<div class="col-md-12">
			<div class="row">
	


				<div class="col-md-12">
                    <p><br><br><br><br>
                    <center>
                        <h1>
                            <font color="blue">请选择导航栏任意一项开始工作吧！</font>
                        </h1>
                        
                    <br>
                </center>
                <center><img align="center" src="img/admin-logo.png"></center>
                    <center>
                        <p>
                            <ul>
                                <li><h3>添加记录时，请注意核对实际数据，确认数据无误再添加;</h3></li>
                                <li><h3>删除记录时，请确认该学生记录已无效，否则后果很严重;</h3></li>
                                <li><h3>修改记录时，应配合纸质记录进行，将修改日志即使上传;</h3></li>
                                <li><h3>查询记录时，注意数据保密，并将日志进行备份以便核对;</h3></li>
                                <li><h3>请管理员随时备份数据，保证数据库安全，防范黑客入侵;</h3></li>
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