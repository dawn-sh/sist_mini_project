<%@page import="idx.model.IdxDao"%>
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
<%-- 로그인된 상태 --%>
<%
	//세션으로 부터 idok읽어오기
	//loginAction에서 아이디 세션 저장해놓음
	String id=(String)session.getAttribute("idok");

	//아이디에 해당하는 이름을 dao로부터 얻는다
	IdxDao db=new IdxDao();
	String name=db.getName(id);
%>

<br><br>
<b style="color: green;"><%=name %></b>님이 로그인중~~~&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="button" value="로그아웃" class="btn btn-danger"
<%-- 세션 remove로 로그아웃할 수 있다 --%>
onclick="location.href='logoutAction.jsp'">
<br><br>
<img alt="" src="../image/f3.png">
</body>
</html>