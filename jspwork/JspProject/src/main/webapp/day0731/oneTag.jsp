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
<!-- oneInclude.jsp와 쌍으로 이어진 파일 -->

	<!-- include는 헤드 푸터 등등 여러 파일을 합칠때 주로 사용 -->
	<h3>oneInclude.jsp를 include하기</h3>
	<!-- include는 값을 보내고 다시 받아온다 / 즉 여기서 실행해야 출력잘되고 oneInclude에서는 출력안됨 -->
	<!-- 전달값을 보내고 받을 예정이라 닫는 태그 밑으로 내리기 -->
	<!-- 즉 oneTag값 출력후 oneInclude에 값을 보내고 다시 받아온 후 oneTag에서 다시 출력
		 / 출력된 url 주소창을 보면 확인 가능 -->
	<jsp:include page="oneInclude.jsp">
		<!-- param값 밖에 안들어감 -->
		<jsp:param value="오늘은 월요일!!!" name="msg"/>
		<jsp:param value="../image/01.png" name="ismgname"/>
	</jsp:include>
</body>
</html>