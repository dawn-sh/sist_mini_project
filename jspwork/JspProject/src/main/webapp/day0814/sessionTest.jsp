<%@page import="java.util.Date"%>
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
	//세션은 자바상태에서 시작
	//세션을 저장하는 방법
	//session.setAttribute(키값, "happy monday!!!") -> happy monday를 키값에 저장
	session.setAttribute("msg", "happy monday!!!");
	session.setMaxInactiveInterval(60); //60초동안 유지시간 지정
%>

<h3>세션값 얻기</h3>
세션값: <%=session.getAttribute("msg") %><br> <%-- happy monday가 저장된 Object값을 가져온다 --%>
세션유지시간: <%=session.getMaxInactiveInterval() %>초<br> <%-- ex)로그인 유지시간 --%>
세션 생성시간: <%=session.getCreationTime() %><br> <%-- 세션이 생성된 시간 --%>
세션 생성시간: <%=new Date(session.getCreationTime()) %>
</body>
</html>