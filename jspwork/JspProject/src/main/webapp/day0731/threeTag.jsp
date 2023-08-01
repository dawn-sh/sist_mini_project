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
	<h1>이 문장이 보일까요?</h1>
	<!-- include와 다르게 forward는 값을 보내기만하고 받지는 않음 -->
	<!-- 실행은 똑같이 tag에서 하지만 출력은 Forward에서만 가능 -->
	<!-- 즉 threeForward에 있는 값만 출력됨 -->
	<jsp:forward page="threeForward.jsp"/>
</body>
</html>