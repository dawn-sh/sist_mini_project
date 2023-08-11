<%@page import="db.simpleguest.SimpleGuestDto"%>
<%@page import="db.simpleguest.SimpleGuestDao"%>
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
<%
	String num=request.getParameter("num");
	SimpleGuestDao dao=new SimpleGuestDao();
	SimpleGuestDto dto=dao.getData(num);
%>
<body>
<form action="deleteActionForm.jsp">
<input type="hidden" name="num" value="<%=num%>">
<table class="table table-bordered" style="width: 300px;">
	<tr>
		<th>비밀번호를 입력해주세요.</th>
	<tr>
	<tr>
		<td>
			<%-- name을 pass로 줘야 deleteActionForm에서 pass로 받아올 수 있고 비교할 수 있다 --%>
			<input type="password" name="pass">
		</td>
	</tr>
	<tr>
		<td align="center">
			<input type="submit" value="삭제" class="btn btn-outline-danger">
			<input type="button" value="취소" class="btn btn-outline-info"
			onclick="location.href='guestList.jsp'">
		</td>
	</tr>
</table>
</form>
</body>
</html>