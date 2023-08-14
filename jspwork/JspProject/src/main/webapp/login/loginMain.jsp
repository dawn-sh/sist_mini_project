<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Cute+Font&family=Diphylleia&family=Dokdo&family=Nanum+Brush+Script&family=Nanum+Gothic+Coding&family=Noto+Sans+KR&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
</head>
<body>
<%-- 로그인 먼저 하는 이유는 로그인 먼저 해보고 회원가입 하고 그대로 쓰기 위해서
	 include로 longinok여부에 따른 loginok/loginout이 와야해서 가져와야함
	 dto는 필요없음 --%>
<%
	String loginok=(String)session.getAttribute("loginok");
	
	if(loginok==null || loginok.equals(""))//로그아웃 상태
	{%>
		<jsp:include page="loginForm.jsp"/>	
	<%}
	else //로그인 상태
	{%>
		<jsp:include page="logoutForm.jsp"/>	
	<%}
%>
</body>
</html>