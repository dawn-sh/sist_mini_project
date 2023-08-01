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
<!-- oneTag.jsp와 쌍으로 이어진 파일 -->
	<%
		/* oneTag에서 보낸 파라메터 값을 가져옴 */
		String msg=request.getParameter("msg");
		String iname=request.getParameter("imgname");
	%>
	
	<!-- oneTag에서 받아온 값을 다시 oneTag로 보냄 -->
	<h3>전달받은 메세지: <%=msg%></h3>
	<h3>전달받은 이미지</h3>
	<img alt="" src="<%=iname%>">
</body>
</html>