<%@page import="member.model.MemberDao"%>
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
<%
	String id=(String)session.getAttribute("id");
	MemberDao dao=new MemberDao();
	String name=dao.getName(id);
%>

<br><br>
<h4><b><%=name %>님이 로그인 하셨습니다 다들 박수~~~~~</b></h4>
<input type="button" value="로그아웃" class="btn btn-outline-danger"
onclick="location.href='logoutAction.jsp'">
<br><br>
<img alt="" src="../image/b9.png">
</body>
</html>