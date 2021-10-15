<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="bootstrap_jsp.Cookies"%>
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");

	if (id.equals(password)) {
		// ID와 암호가 같으면 로그인에 성공한 것으로 판단.
		response.addCookie(Cookies.createCookie("AUTH", id, "/", -1));
		session.setAttribute("MEMBERID", id);
%>
<% response.sendRedirect("../main/index.jsp");%>
<html>
<head>
<title>로그인성공</title>
</head>
<body>
</body>
</html>
<%
	} else { // 로그인 실패시
%>
<script>
	alert("로그인에 실패하였습니다.");
	history.go(-1);
</script>
<%
	}
%>