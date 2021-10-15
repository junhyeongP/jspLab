<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="bootstrap_jsp.Cookies"%>
<%
	response.addCookie(Cookies.createCookie("AUTH", "", "/", 0));
	session.invalidate();
%>
<html>
<head>
<title>로그아웃</title>
</head>
<body>

<% response.sendRedirect("loginForm.jsp");%>
</body>
</html>
