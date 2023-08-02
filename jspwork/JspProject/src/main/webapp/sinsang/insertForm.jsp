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
<%-- 출력과 조건을 java와 html을 섞어야하기 때문에 전부 jsp파일로 --%>
<%-- 폼을 만드는 곳(db로 전송하는 곳) --%>
<form action="insertAction.jsp" method="post">
	<table class="table table-bordered" style="width: 400px;">
	<%-- sqltable create에서 num은 primary key로 줘서 auto num/date는 sql문에 sysdate 하기 때문에 2가지만 입력하면 됨 --%>
		<tr>
			<th>이름</th>
			<td>
				<input type="text" name="name" style="width: 150px;" placeholder="이름입력"
				required="required" class="form-control">
			</td>
		</tr>
		
		<tr>
			<th>주소</th>
			<td>
				<input type="text" name="addr" style="width: 250px;" placeholder="간단주소입력"
				required="required" class="form-control">
			</td>
		</tr>
		
		<tr>
			<td colspan="2" align="center">
				<input type="submit" value="전송" class="btn btn-info">
				<%-- onclick="location.href=''" : onclick 기본 구조 / list.jsp로 이동 --%>
				<input type="button" value="목록" onclick="location.href='list.jsp'"
				class="btn btn-success">
			</td>
		</tr>
	</table>
</form>
</body>
</html>