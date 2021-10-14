<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="bootstrap_jsp.Cookies"%>
<%
	response.addCookie(Cookies.createCookie("AUTH", "", "/", 0));
%>
<html>
<head>
<title>로그아웃</title>
</head>
<body>
<jsp:forward page="loginForm.jsp" />

</body>
</html>
