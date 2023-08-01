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
<!-- 중요 -->
<h2>다른 폴더의 파일 include하기</h2>
<h4>구구단 가져오기 (여기까지만 출력하고 include할 파일 가져옴)</h4>
<%-- <jsp:include page=""/> 이렇게 열고 닫고를 한 태그에 사용가능 --%>
<jsp:include page="./guguWrite.jsp"></jsp:include>
<hr>
<h4>퀴즈 이미지 가져오기</h4>
<jsp:include page="./quizArrimage.jsp"/>



<h3>현재 파일 종료!!!</h3>
</body>
</html>