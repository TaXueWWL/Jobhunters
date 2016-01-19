<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 验证页面，成功则重定向 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>validate page</title>
</head>
<body>

	<!-- 管理员验证 -->
	<jsp:useBean id="admin" class="com.bwm.bean.adminTable">
	</jsp:useBean>
	<jsp:useBean id="adminservice"
		class="com.bwm.service.adminservice">
	</jsp:useBean>
	

	
	<!-- 封装表单数据    admin -->
	<jsp:setProperty property="*" name="admin" />
	
	
	<%--admin验证 --%>
	<%
		//admin.setAdminname("admintest");
		out.print(admin.getAdminname());
		out.print("\n" + admin.getPassword());
		if (adminservice.validateAdmin(admin)) {
			//将当前jsp页面中的admin实例存储在名为admin的session字段中
			session.setAttribute("admin", admin);
	%>
	<jsp:forward page="adminpage.jsp"></jsp:forward>
	<%
		} else {
	%>
	<jsp:forward page="adminindex.jsp"></jsp:forward>
	<%
		}
	%>
	
	
</body>
</html>